var importObject = {
  console: {
    log: function(arg) {
      console.log(arg);
    }
  }
};


fetch('main.wasm').then(response =>
  response.arrayBuffer()
).then(bytes => WebAssembly.instantiate(bytes, importObject)).then(obj => {
      obj.instance.exports.printBoolean(1)
}).catch(console.error);
  
  