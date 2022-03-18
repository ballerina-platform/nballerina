const fs = require('fs');
const TAG_SHIFT = 56n;
const TYPE_FLAG = 15n << 56n;
const IMMEDIATE_FLAG = 32n << 56n;
let offset = 0;
const TAG_INT = 7n
let memory = null;
let tags = [];
if (process.argv.length > 2) {
  let fileName = process.argv[2];
  const wasmBuffer = fs.readFileSync(fileName);
  if (process.argv.length > 3) {
    let importObject = {
      console: {
        log: function(arg) {
          if (Number(arg & IMMEDIATE_FLAG) != 0) {
            console.log(getImmediateValue(arg).toString());
          }
          else {
            let loc = Number(arg & ((2n**32n) - 1n));
            let neg = false;
            if (BigInt(memory[2*(loc/8) + 1]) & 1n << 31n) {
              neg = true;
            }
            let x = (BigInt(memory[2*(loc/8) + 1]) << 32n) | (BigInt(memory[2*(loc/8)]));
            x = x & ((2n**63n) - 1n)
            if (neg) {
              x = -9223372036854775808n + x;
            }
            console.log(x.toString())
          }
        },
      },
      bal: {
        taggedInt: function (arg) {
          return intToTagged(arg);
        },
        taggedToInt: function (arg) {
          return taggedToInt(arg);
        },
      }
    };
    WebAssembly.instantiate(wasmBuffer, importObject).then(obj => {
      memory = new Uint32Array(obj.instance.exports.memory.buffer);
      let exported = Object.getOwnPropertyNames(obj.instance.exports);
      exported.forEach(element => {
        let attr = obj.instance.exports[element];
        if (typeof attr === "object") {
          if (attr instanceof WebAssembly.Tag) {
            tags.push({ name: element, tag: attr});
          }
        }
      });
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
      memory = new Uint32Array(obj.instance.exports.memory.buffer);
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

function getImmediateValue(arg) {
  let type = (arg & TYPE_FLAG) >> 56n;
  if (Number(type) == 7) {
    let x = ((2n**56n) - 1n) & arg;
    let neg = false;
    if (arg & 1n << 55n) {
      neg = true;
    }
    if (neg) {
      x = -72057594037927936n + x;
    }
    return x;
  }
  else if (Number(type) == 1) {
    if (((2n**56n) - 1n) & arg) {
      return "true"
    }
    else {
      return "false"
    }
  }
  else if (Number(type) == 0) {
    return "";
  }
}

function intToTagged(n) {
  if (n < 36028797018963967n && n > -36028797018963968n) {
    return (n & ((1n << TAG_SHIFT) - 1n)) | IMMEDIATE_FLAG | (TAG_INT << TAG_SHIFT);
  }
  else {
    const strBuf = new TextEncoder().encode(n);
    const outBuf = new Uint8Array(memory, offset, strBuf.length);
    for (let i = 0; i < strBuf.length; i++) {
      outBuf[i] = strBuf[i];
    }
    let val = (TAG_INT << TAG_SHIFT) | BigInt(offset);
    offset += 8;
    return val;
  }
}

function taggedToInt(arg) {
  if (Number(arg & IMMEDIATE_FLAG) != 0) {
    return BigInt(getImmediateValue(arg));
  }
  else {
    let loc = Number(arg & ((2n**32n) - 1n));
    let neg = false;
    if (BigInt(memory[2*(loc/8) + 1]) & 1n << 31n) {
      neg = true;
    }
    let x = (BigInt(memory[2*(loc/8) + 1]) << 32n) | (BigInt(memory[2*(loc/8)]));
    x = x & ((2n**63n) - 1n)
    if (neg) {
      x = -9223372036854775808n + x;
    }
    return x;
  }
}