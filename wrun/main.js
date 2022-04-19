const fs = require('fs');
let tags = [];
let getType = null;
let untagInt = null;
let untagBoolean = null;
let len = null;
let strLen = null;
let arrayGet = null;
let getCharAt = null;
let getTypeChildren = null;
let getObject = null;
const COMPARE_LT = 0;
const COMPARE_LE = 1;
const COMPARE_GT = 2;
const COMPARE_GE = 3;
if (process.argv.length > 2) {
  let fileName = process.argv[2];
  const wasmBuffer = fs.readFileSync(fileName);
  if (process.argv.length > 3) {
    let importObject = {
      console: {
        log: function(arg) {
          console.log(getValue(arrayGet(arg, 0)));
        },
      },
      string: {
        create: function(arg) {
          return create_string(arg);
        },
        length: function(arg) {
           return BigInt(arg.value.length - arg.surrogate.length);
        },
        concat: function(arg1, arg2) {
          return {
            value: arg1.value + arg2.value,
            surrogate: [...arg1.surrogate, ...arg2.surrogate]
          }
        },
        eq: function(arg1, arg2) {
          return arg1.value == arg2.value;
        },
        comp: function(op, arg1, arg2) {
          let result = false;
          switch (op) {
            case COMPARE_GE:
              result = arg1.value >= arg2.value
              break;
            case COMPARE_GT:
              result = arg1.value > arg2.value
              break;
            case COMPARE_LE:
              result = arg1.value <= arg2.value
              break;
            case COMPARE_LT:
              result = arg1.value < arg2.value
              break;
            default:
              break;
          }
          return result;
        }
      }
    };
    WebAssembly.instantiate(wasmBuffer, importObject).then(obj => {
      let exported = Object.getOwnPropertyNames(obj.instance.exports);
      exported.forEach(element => {
        let attr = obj.instance.exports[element];
        if (typeof attr === "object") {
          if (attr instanceof WebAssembly.Tag) {
            tags.push({ name: element, tag: attr});
          }
        }
      });
      getType = obj.instance.exports.get_type;
      getTypeChildren = obj.instance.exports.get_type_children;
      untagInt = obj.instance.exports.tagged_to_int;
      untagBoolean = obj.instance.exports.tagged_to_boolean;
      len = obj.instance.exports.arr_len;
      arrayGet = obj.instance.exports.arr_get;
      strLen = obj.instance.exports.str_arr_length;
      getObject = obj.instance.exports.get_string;
      getCharAt = obj.instance.exports.get_char_at;
      obj.instance.exports.main()
    }).catch((err) => {
        if(typeof err == "object" &&  err instanceof WebAssembly.Exception) {
            let tag = tags.filter(tag => err.is(tag.tag));
            if (tag.length > 0) {
              err.message = tag[0].name;
            }
        }
        errorHandler(err);
    });
  }
  else {
    WebAssembly.instantiate(wasmBuffer).then(obj => {
      obj.instance.exports.main()
    }).catch((err) => errorHandler(err));
  }
}

const getValue = (ref, parent = null) => {
  let type = getType(ref);
  if (parent !== null) {
    type = getTypeChildren(parent, ref);
  }
  if (type == 0) {
    return untagInt(ref).toString();
  }
  else if (type == 1) {
    if (untagBoolean(ref).toString() === "1") {
      return "true";
    }
    return "false";
  }
  else if (type == 2){
    return "";
  }
  else if (type == 3) {
    let length = len(ref);
    let output = "[";
    for (let index = 0; index < length; index++) {
      let element = arrayGet(ref, index);
      let val = getValue(element, ref);
      if (val === "") {
        val = "null"
      }
      if (getType(element) == 5) {
        val = "\"" + val + "\"";
      }
      output += val + ",";
    }
    if (output.indexOf(",") != -1) {
      output = output.substring(0, output.length - 1)
    }
    output += "]"
    return output;
  }
  else if (type == 4) {
    return "...";
  }
  else if (type == 5) {
    return getObject(ref).value;
  }
}

const errorHandler = err => {
  let msg = "panic: ";
  if (err.message == "divide result unrepresentable") {
    msg += "arithmetic overflow"
  }
  else if (err.message == "remainder by zero") {
    msg += "divide by zero"
  }
  else if (err.message == "overflow") {
    msg += "arithmetic overflow"
  }
  else if (err.message == "bad-conversion") {
    msg += "bad type cast"
  }
  else if (err.message == "index-outof-bound") {
    msg += "index out of bounds"
  }
  else if (err.message == "index-too-large") {
    msg += "list too long"
  }
  else if (err.message == "Maximum call stack size exceeded") {
    msg += "stack overflow";
  }
  else {
    msg += err.message
  }
  console.log(msg)
}

const create_string = (ref) => {
  var chars = [];
  let length = strLen(ref);
  let surrogate = []
  for (let index = 0; index < length; index++) {
    let char = getCharAt(ref, index);
    chars.push(char);
  }
  var bytes = new Uint8Array(chars);
  var string = new TextDecoder('utf8').decode(bytes);
  surrogate = string.match(/[\uD800-\uDBFF][\uDC00-\uDFFF]/g) || [];
  return {
    value: string,
    surrogate: surrogate
  };
}