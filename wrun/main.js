const fs = require('fs');
let tags = [];
let getType = null;
let untagInt = null;
let untagBoolean = null;
let len = null;
let arrayGet = null;
let getTypeChildren = null;
let getObject = null;
let mem = null;
let bal_map_get_keys = null
let bal_mapping_get = null
let bal_mapping_num_keys = null
let bal_mapping_get_key = null
const COMPARE_LT = 0;
const COMPARE_LE = 1;
const COMPARE_GT = 2;
const COMPARE_GE = 3;
const create_string = (offset, length) => {
  var bytes = new Uint8Array(mem.buffer, offset, length);
  var string = new TextDecoder('utf8').decode(bytes);
  return string;
} 
const string = String.prototype;
string.create = create_string;
if (process.argv.length > 2) {
  let fileName = process.argv[2];
  const wasmBuffer = fs.readFileSync(fileName);
  if (process.argv.length > 3) {
    let importObject = {
      console: {
        log: function(arg) {
          console.log(getValue(arrayGet(arg, 0)));
        }
      },
      string: {
        create: function(offset, length) {
          return create_string(offset, length);
        },
        length: function(arg) {
           return arg.length;
        },
        concat: function(arg1, arg2) {
          return arg1 + arg2
        },
        eq: function(arg1, arg2) {
          return arg1 == arg2;
        },
        comp: function(op, arg1, arg2) {
          let result = false;
          switch (op) {
            case COMPARE_GE:
              result = arg1 >= arg2
              break;
            case COMPARE_GT:
              result = arg1 > arg2
              break;
            case COMPARE_LE:
              result = arg1 <= arg2
              break;
            case COMPARE_LT:
              result = arg1 < arg2
              break;
            default:
              break;
          }
          return result;
        },
        hash: function(arg) {
          return hash_string(arg);
        }
      },
      int: {
        hex: function (arg) {
          return arg.toString(16)
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
      getObject = obj.instance.exports.get_string;
      getMap = obj.instance.exports.get_map;
      getCharAt = obj.instance.exports.get_char_at;
      mem = obj.instance.exports.memory;
      bal_map_get_keys = obj.instance.exports._bal_map_get_keys 
      bal_mapping_get = obj.instance.exports._bal_mapping_get 
      bal_mapping_num_keys = obj.instance.exports._bal_mapping_num_keys 
      bal_mapping_get_key = obj.instance.exports._bal_mapping_get_key 
      obj.instance.exports.main();
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
      let ty = getType(element);
      if (val === "") {
        val = "null"
      }
      if (ty == 5) {
        val = JSON.stringify(val)
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
    return getObject(ref);
  }
  else if (type == 6) {
    let map = "{"
    let keys  = bal_map_get_keys(ref)
    let len = bal_mapping_num_keys(keys)
    for (let index = 0; index < len; index++) {
      let key = getObject(bal_mapping_get_key(keys, index));
      let valRef = bal_mapping_get(ref, bal_mapping_get_key(keys, index));
      let valType = getType(valRef);
      let val = "";
      if (valType == 2) {
        val = "null"
      }
      else {
        val = getValue(valRef)
      }
      map += `"${key}":${val},`
    }
    if (map.indexOf(",") != -1) {
      map = map.substring(0, map.length - 1)
    }
    map += "}"
    return map;
  }
}

const hash_string = (str) => {
  var hash = 5381,
  i    = str.length;
  while(i) {
    hash = (hash * 33) ^ (2654435761 * str.charCodeAt(--i));
  }
  return hash >>> 0;
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
