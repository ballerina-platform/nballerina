const fs = require('fs');
const INT_MIN = -9223372036854775808n;
const INT_MAX = 9223372036854775807n;
if (process.argv.length > 2) {
  let fileName = process.argv[2];
  const wasmBuffer = fs.readFileSync(fileName);
  if (process.argv.length > 3) {
    let importObject = {
      console: {
        log: function(arg) {
            console.log(arg.toString());
        }
      }
    };
    WebAssembly.instantiate(wasmBuffer, importObject).then(obj => {
      obj.instance.exports.main()
    }).catch((err) => errorHandler(err));
  }
  else {
    WebAssembly.instantiate(wasmBuffer).then(obj => {
      obj.instance.exports.main()
    }).catch((err) => errorHandler(err));
  }
}

const errorHandler = err => {
  let msg = "panic: ";
  // console.log(err.message);
  if (err.message == "divide result unrepresentable") {
    msg += "arithmetic overflow"
  }
  else if (err.message == "remainder by zero") {
    msg += "divide by zero"
  }
  else if (err.message == "wasm exception") {
    msg += "arithmetic overflow"
  }
  else {
    msg += err.message
  }
  console.log(msg)
}