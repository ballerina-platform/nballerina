const fs = require('fs');
let WasmModule = {
  tags: [],
  memory: null
};
const TYPE_NIL = 1;
const TYPE_BOOLEAN = 2;
const SELF_REFERENCE = 4;
const TYPE_INT = 128;
const TYPE_FLOAT = 256;
const TYPE_STRING = 1024;
const TYPE_ERROR = 2048;
const TYPE_LIST = 262148;
const TYPE_MAP = 524296;
const COMPARE_LT = 0;
const COMPARE_LE = 1;
const COMPARE_GT = 2;
const COMPARE_GE = 3;

let fileName = process.argv[2];
const wasmBuffer = fs.readFileSync(fileName);

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
  comp: (op, arg1, arg2) => {
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
  hash: (str) => {
    var hash = 5381,
      i = str.length;
    while (i) {
      hash = (hash * 33) ^ (2654435761 * str.charCodeAt(--i));
    }
    return hash >>> 0;
  }
};

const intImport = {
  hex: (arg) => {
    return arg.toString(16)
  }
};

const ioImport = {
  log: (arg) => {
    console.log(getValue(WasmModule.arr_get(arg, 0)));
  }
};

let importObject = {
  console: ioImport,
  string: stringImport,
  int: intImport
};

WebAssembly.instantiate(wasmBuffer, importObject).then(obj => {
  processExports(obj.instance.exports);
  obj.instance.exports.main();
}).catch((err) => {
  handleError(err);
});

const getValue = (ref, parent = null) => {
  let type = parent == null ? WasmModule.get_type(ref) : WasmModule.get_type_children(parent, ref);
  let result = null;
  switch (type) {
    case TYPE_NIL:
      result = parent == null ? "" : "null";
      break;
    case TYPE_BOOLEAN:
      result = WasmModule.tagged_to_boolean(ref).toString() === "1" ? "true" : "false";
      break;
    case SELF_REFERENCE:
      result = "...";
      break;
    case TYPE_INT:
      result = WasmModule.tagged_to_int(ref).toString();
      break;
    case TYPE_FLOAT:
      result = WasmModule.tagged_to_float(ref);
      if ((1 / result) == -Infinity) {
        result = "-0.0";
      }
      else if (Number.isInteger(result)) {
        result = `${result}.0`;
      }
      break;
    case TYPE_STRING:
      result = WasmModule.get_string(ref);
      if (parent != null) result = JSON.stringify(result)
      break;
    case TYPE_LIST:
      let length = WasmModule.arr_len(ref);
      let elements = []
      for (let index = 0; index < length; index++) {
        let element = getValue(WasmModule.arr_get(ref, index), ref);
        elements.push(element);
      }
      result = "[" + elements.join(",") + "]"
      break;
    case TYPE_MAP:
      let pairs = []
      let keys = WasmModule._bal_map_get_keys(ref)
      let len = WasmModule._bal_mapping_num_keys(keys)
      for (let index = 0; index < len; index++) {
        let key = WasmModule.get_string(WasmModule._bal_mapping_get_key(keys, index));
        let val = getValue(WasmModule._bal_mapping_get(ref, WasmModule._bal_mapping_get_key(keys, index)), ref);
        pairs.push(`"${key}":${val}`)
      }
      result = "{" + pairs.join(",") + "}";
      break;
      case TYPE_ERROR:
        return "error(\"" +WasmModule.get_error(ref) + "\")";
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

