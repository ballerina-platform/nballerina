const fs = require('fs');

let tags = [];
let getType = null;
let untagInt = null;
let untagBoolean = null;
if (process.argv.length > 2) {
  let fileName = process.argv[2];
  const wasmBuffer = fs.readFileSync(fileName);
  if (process.argv.length > 3) {
    let importObject = {
      console: {
        log: function(arg) {
          let type = getType(arg);
          if (type == 1) {
            if (untagBoolean(arg)) {
              console.log("true");
            }
            else {
              console.log("false");
            }
          }
          else if (type == 0) {
            console.log(untagInt(arg).toString());
          }
          else {
            console.log("");
          }
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
