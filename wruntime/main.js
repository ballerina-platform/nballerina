const fs = require('fs');
var Decimal = require('./third-party/decimal');
Decimal.set({ precision: 34, toExpPos: 34, defaults: true, rounding: Decimal.ROUND_HALF_EVEN });
let WasmModule = {
  tags: [],
  memory: null
};
const TYPE_NIL = 1;
const TYPE_BOOLEAN = 2;
const SELF_REFERENCE = 4;
const TYPE_INT = 128;
const TYPE_FLOAT = 256;
const TYPE_DECIMAL = 512;
const TYPE_STRING = 1024;
const TYPE_ERROR = 2048;
const TYPE_LIST = 262144;
const TYPE_MAP = 524288;

let fileName = process.argv[2];
const wasmBuffer = fs.readFileSync(fileName);

const formatNumberString = (num, separator) => {
  let parts = num.toString().split("e");
  if (parts.length == 2) {
      let exponent = parts[1]
      exponent = exponent.replace("+","");
      if (exponent.substr(-2) == ".0") {
          exponent = exponent.substr(0, exponent.length -2)
      }
      parts[1] = exponent;
      return parts.join(separator);
  }
  else {
      return num;
  }
}

const formatDecimal = (str, scale) => {
  if (str == "0") {
    return str;
  }
  let aScale = 0;
  let parts = str.split("E");
  let significant = parts[0];
  let sigLength = significant.length;
  let dotIndex = significant.indexOf(".");
  let exponent;
  if (significant[0] == "-") {
    sigLength -= 1;
  }
  if (dotIndex != -1) {
      aScale = significant.length - dotIndex - 1; 
      sigLength -= 1;
  }
  if (sigLength >= 34) {
    return str;
  }
  if (parts.length > 1) {
      exponent = parts[1];
      if (parts[1][0] == "-") {
          aScale += parseInt(exponent.substring(1));
      }
      else {
          let unsignedE = exponent[0] == "+" ? exponent.substring(1) : exponent;
          if (aScale > 0) {
            aScale = aScale + parseInt(unsignedE);
          }
      }
  }
  if (aScale < scale) {
      let adjustedScale = scale - aScale;
      if (adjustedScale > 33) {
        adjustedScale = 34 - sigLength;
      }
      let zeros = "0".repeat(adjustedScale);
      zeros = dotIndex != -1 ? zeros : "." + zeros;
      significant = significant + zeros;
      if (exponent) {
          return significant + "E" + exponent;
      }
      return significant;
  }  
  return str;  
}

const stringImport = {
  create: (offset, length) => {
    var bytes = new Uint8Array(WasmModule.memory.buffer, offset, length);
    var string = new TextDecoder('utf8').decode(bytes);
    return string;
  },
  length: (arg) => {
    return arg.length;
  },
  concat: (arg1, arg2) => {
    return arg1 + arg2
  },
  eq: (arg1, arg2) => {
    return arg1 == arg2;
  },
  comp: (arg1, arg2) => {
    let result = 1;
    if (arg1 < arg2) {
      result = 0; 
    }
    else if (arg1 > arg2) {
      result = 2;
    }
    return result;
  },
  hash: (str) => {
    var hash = 5381,
      i = str.length;
    while (i) {
      hash = (hash * 33) ^ (2654435761 * str.charCodeAt(--i));
    }
    return hash >>> 0;
  }
};

const finish = (result) => {
  if (result.gte("1e+6145") || result.lte("-1e+6145")) {
    throw Error("arithmetic overflow")
  }
  if ((result.lt("1E-6143") && result.gt("0"))  || (result.gt("-1E-6143") && result.lt("0"))) {
    return new Decimal("0");
  }
  else {
    return result;
  }
}


const decimalImport = {
  create: (offset, length) => {
    var bytes = new Uint8Array(WasmModule.memory.buffer, offset, length);
    var decString = new TextDecoder('utf8').decode(bytes);
    let dec = new Decimal(decString);
    return dec;
  },
  add: (arg1, arg2) => {
    let result = arg1.add(arg2);
    return finish(result);
  },
  sub: (arg1, arg2) => {
    let result = arg1.sub(arg2);
    return finish(result);
  },
  div: (arg1, arg2) => {
    if (arg1.isZero() && arg2.isZero()) {
      throw Error("not a valid decimal")
    }
    else if (arg2.isZero(arg2)) {
      throw Error("divide by zero")
    }
    let result = arg1.div(arg2);
    return finish(result);
  },
  mul: (arg1, arg2) => {
    let result = arg1.mul(arg2);
    return finish(result);
  },
  rem: (arg1, arg2) => {
    let result = arg1.modulo(arg2);
    return finish(result);
  },
  eq: (arg1, arg2) => {
    return arg1.equals(arg2);
  },
  exact_eq: (arg1, arg2) => {
    return arg1.equals(arg2);
  },
  from_float: (arg1) => {
    if (isNaN(arg1)) {
      throw Error("not a valid decimal")
    }
    if (!isFinite(arg1)) {
      throw Error("arithmetic overflow")
    }
    let decString = arg1.toString();
    let dec = new Decimal(decString);
    return dec;
  },
  from_int: (arg1) => {
    let decString = arg1.toString();
    let dec = new Decimal(decString);
    return dec;
  },
  comp: (arg1, arg2) => {
    let result = arg1.comparedTo(arg2) + 1;
    return result;
  },
  to_int: (arg1) => {
    let result = arg1.toNearest(1);
    if (result.gt(new Decimal("9223372036854775807")) || result.lt("-9223372036854775808")) {
      throw Error("arithmetic overflow")
    }
    return BigInt(result);
  },
  to_float: (arg1) => {
    return arg1.toNumber();
  },
  neg: (arg1) => {
    return arg1.neg();
  }
}

const intImport = {
  hex: (arg) => {
    return arg.toString(16)
  }
};

const ioImport = {
  log: (arg) => {
    let length = WasmModule._bal_list_length(arg);
    let elements = []
    for (let index = 0; index < length; index++) {
      let element = getValue(WasmModule._bal_list_get(arg, index));
      elements.push(element);
    }
    result = elements.join("")
    console.log(result);
  }
};

let importObject = {
  console: ioImport,
  string: stringImport,
  int: intImport,
  decimal: decimalImport
};

WebAssembly.instantiate(wasmBuffer, importObject).then(obj => {
  processExports(obj.instance.exports);
  obj.instance.exports.main();
}).catch((err) => {
  handleError(err);
});

const getValue = (ref, parent = null) => {
  let type = parent == null ? WasmModule._bal_get_type(ref) : WasmModule._bal_get_type_children(parent, ref);
  let result = null;
  switch (type) {
    case TYPE_NIL:
      result = parent == null ? "" : "null";
      break;
    case TYPE_BOOLEAN:
      result = WasmModule._bal_tagged_to_boolean(ref).toString() === "1" ? "true" : "false";
      break;
    case SELF_REFERENCE:
      result = "...";
      break;
    case TYPE_INT:
      result = WasmModule._bal_tagged_to_int(ref).toString();
      break;
    case TYPE_FLOAT:
      result = WasmModule._bal_tagged_to_float(ref);
      if ((1 / result) == -Infinity) {
        result = "-0.0";
      }
      else if (Number.isInteger(result)) {
        result = `${result}.0`;
      }
      result = formatNumberString(result.toString(), "e");
      break;
    case TYPE_DECIMAL:
      result = WasmModule._bal_get_decimal(ref);
      let scale = WasmModule._bal_get_decimal_scale(ref);
      let lenDecimal = WasmModule._bal_get_decimal_length(ref);
      let offsetDecimal = WasmModule._bal_get_decimal_offset(ref);
      if (lenDecimal == 0 && offsetDecimal == 0) {
        result = formatDecimal(result.toString().toUpperCase(), scale);        
      }
      else {
        var bytes = new Uint8Array(WasmModule.memory.buffer, offsetDecimal, lenDecimal);
        result = new TextDecoder('utf8').decode(bytes);
      }
      break;
    case TYPE_STRING:
      result = WasmModule._bal_get_string(ref);
      if (parent != null) result = result == null ? "\"\"" : JSON.stringify(result)
      break;
    case TYPE_LIST:
      let length = WasmModule._bal_list_length(ref);
      let elements = []
      for (let index = 0; index < length; index++) {
        let element = getValue(WasmModule._bal_list_get(ref, index), ref);
        elements.push(element);
      }
      result = "[" + elements.join(",") + "]"
      break;
    case TYPE_MAP:
      let pairs = []
      let keys = WasmModule._bal_map_get_keys(ref)
      let len = WasmModule._bal_mapping_num_keys(keys)
      for (let index = 0; index < len; index++) {
        let key = WasmModule._bal_get_string(WasmModule._bal_mapping_get_key(keys, index));
        let val = getValue(WasmModule._bal_mapping_get(ref, WasmModule._bal_mapping_get_key(keys, index)), ref);
        pairs.push(`"${key}":${val}`)
      }
      result = "{" + pairs.join(",") + "}";
      break;
      case TYPE_ERROR:
        return "error(\"" +WasmModule._bal_get_error(ref) + "\")";
  }
  return result;
}

const processExports = (exports) => {
  let exported = Object.getOwnPropertyNames(exports);
  exported.forEach(element => {
    let attr = exports[element];
    if (typeof attr === "object") {
      if (attr instanceof WebAssembly.Tag) {
        WasmModule.tags.push({ name: element, tag: attr });
      }
      else if (attr instanceof WebAssembly.Memory) {
        WasmModule.memory = attr;
      }
    }
    else {
      WasmModule[element] = attr;
    }
  });
}

const handleError = (err) => {
  let msg = "panic: ";
  if (typeof err == "object" && err instanceof WebAssembly.Exception) {
    let tag = WasmModule.tags.find(tag => err.is(tag.tag));
    if (tag != undefined) err.message = tag.name;
    if (err.message === "custom-exception") err.message = err.getArg(tag.tag, 0)
  }
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
  else if (err.message == "bad-list-store") {
    msg += "bad list store"
  }
  else if (err.message == "bad-mapping-store") {
    msg += "bad mapping store";
  }
  else if (err.message == "no-filler-value") {
    msg += "no filler value";
  }
  else if (err.message == "Maximum call stack size exceeded") {
    msg += "stack overflow";
  }
  else {
    msg += err.message
  }
  console.log(msg)
}
