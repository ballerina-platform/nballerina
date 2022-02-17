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
      },
      overflow: {
        add: function(op1, op2) {
          if (op1 > 0 && op2 > 0) {
            if (op1 > (INT_MAX - op2)) {
              throw Error("arithmetic overflow")
            }
          }
          else if (op1 < 0 && op2 < 0) {
            if (op1 < (INT_MIN - op2)){
              throw Error("arithmetic overflow")
            }
          }
        },
        sub: function(op1, op2) {
          if (op1 > 0 && op2 < 0){
            if (op1 > (INT_MAX + op2)) {
              throw Error("arithmetic overflow")
            }
          }
          else if (op1 < 0 && op2 > 0){
            if (op1 < (INT_MIN + op2)) {
              throw Error("arithmetic overflow")
            }
          }
        },
        div: function(op1, op2) {
          if (op1 == INT_MIN && op2 == -1) {
            throw Error("arithmetic overflow")
          }
        },
        mul: function(op1, op2) {
          if (op1 > 0 && op2 > 0 && op1 != 0) {
            if (op2 > INT_MAX/op1)
              throw Error("arithmetic overflow")
          }
          else if (op1 != 0) {
            if (Math.abs(op2.toString()) > Math.abs((INT_MIN/op1).toString()))
              throw Error("arithmetic overflow")
          }
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
  else {
    msg += err.message
  }
  console.log(msg)
}
