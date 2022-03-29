const fs = require('fs');
let tags = [];
let getType = null;
let untagInt = null;
let untagBoolean = null;
let len = null;
let arrayGet = null;
if (process.argv.length > 2) {
  let fileName = process.argv[2];
  const wasmBuffer = fs.readFileSync(fileName);
  if (process.argv.length > 3) {
    let importObject = {
      console: {
        log: function(arg) {
          console.log(getValue(arrayGet(arg, 0)));
        },
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
      untagInt = obj.instance.exports.tagged_to_int;
      untagBoolean = obj.instance.exports.tagged_to_boolean;
      len = obj.instance.exports.arr_len;
      arrayGet = obj.instance.exports.arr_get;
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

const getValue = (ref) => {
  let type = getType(ref);
  if (type == 1) {
    return untagBoolean(ref).toString();
  }
  else if (type == 0) {
    try {
      return untagInt(ref).toString();
    }
    catch (error) {
      let length = len(ref);
      let output = "[";
      for (let index = 0; index < length; index++) {
        let element = arrayGet(ref, index);
        output += getValue(element) + ",";
      }
      output = output.substring(0, output.length - 1)
      output += "]"
      return output;
    }
  }
  else {
    return "";
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
  else if (err.message == "Maximum call stack size exceeded") {
    msg += "stack overflow";
  }
  else {
    msg += err.message
  }
  console.log(msg)
}
