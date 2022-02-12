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
    });
  }
  else {
    WebAssembly.instantiate(wasmBuffer).then(obj => {
      obj.instance.exports.main()
    });
  }
}




// fetch('main.wasm').then(response =>
//   response.arrayBuffer()
// ).then(bytes => WebAssembly.instantiate(bytes, importObject)).then(obj => {
//       obj.instance.exports.printNot(0)
// }).catch(console.error);
  
  