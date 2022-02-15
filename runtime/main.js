const fs = require('fs');

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
    }).catch(err => console.log(err.message));
  }
  else {
    WebAssembly.instantiate(wasmBuffer).then(obj => {
      obj.instance.exports.main()
    }).catch(err => console.log("panic:" + err.message));
  }
}
