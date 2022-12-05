import re
import sys
import json

JAVA_METHOD_PATTERN = r'@java:Method\s?{([\s\S]*?)}'
JAVA_CONSTRUCTOR_PATTERN = r'@java:Constructor\s?{([\s\S]*?)}'
NAME_PATTERN = r'name\s?:\s?"(.*)"'
CLASS_PATTERN = r'class\s?:\s?"(.*)"'
PARAM_PATTERN = r'paramTypes\s?:\s?\[([\s\S]*)\]'
PROBABLE_REFLECTION_TYPE_PATTERN = r'\w*?\.\S*?'

# These are types needed for reflection config but we can't currently automatically detect them in our code base
reflection_workaround_types = [
    "org.bytedeco.llvm.global.LLVM",
    "org.bytedeco.javacpp.presets.javacpp",
    "org.bytedeco.javacpp.Loader",
    "org.bytedeco.javacpp.ShortPointer",
    "org.bytedeco.javacpp.FloatPointer",
    "org.bytedeco.javacpp.DoublePointer",
    "org.bytedeco.javacpp.CharPointer",
    "org.bytedeco.javacpp.BooleanPointer",
    "org.bytedeco.javacpp.BoolPointer",
    "org.bytedeco.javacpp.CLongPointer",
    "java.lang.UnsatisfiedLinkError",
    "java.lang.NullPointerException",
    "org.bytedeco.llvm.LLVM.LLVMJITEvaluatedSymbol",
    "org.bytedeco.llvm.LLVM.LLVMJITSymbolFlags",
    "org.bytedeco.llvm.LLVM.LLVMOpInfo1",
    "org.bytedeco.llvm.LLVM.LLVMOrcLookupStateRef",
    "org.bytedeco.llvm.LLVM.LLVMOrcCLookupSetElement",
    "org.bytedeco.llvm.LLVM.LLVMOrcCLookupSetElement",
    "org.bytedeco.llvm.LLVM.LLVMOrcCSymbolsList",
    "org.bytedeco.llvm.LLVM.LLVMOrcCSymbolAliasMapEntry"
]


class ConfigContext:
    def __init__(self):
        self.jni_configs = []
        self.reflection_types = []
        self.update_reflection_data(reflection_workaround_types)

    def add_method(self, method):
        class_name, name, params = method
        methods = self.get_class_data(class_name)["methods"]
        for method in methods:
            if method["name"] == name:
                return
        methods.append({"name": name})
        self.update_reflection_data(params)

    def get_class_data(self, class_name):
        for each in self.jni_configs:
            if each["name"] == class_name:
                return each
        ref = {"name": class_name, "methods": []}
        self.jni_configs.append(ref)
        return ref

    def update_reflection_data(self, typeNames):
        for name in typeNames:
            if re.match(PROBABLE_REFLECTION_TYPE_PATTERN, name) != None and name not in self.reflection_types:
                self.reflection_types.append(name)

    def generate_output(self):
        return self.generate_jni_config(), self.generate_reflection_config()

    def generate_jni_config(self):
        return json.dumps(self.jni_configs, indent=4)

    def generate_reflection_config(self):
        return json.dumps([self.get_default_reflection_config_with_name(name) for name in self.reflection_types], indent=4)

    def get_default_reflection_config_with_name(self, name):
        return {
            "name": name,
            "queryAllPublicConstructors": True,
            "queryAllDeclaredConstructors": True,
            "queryAllPublicMethods": True,
            "queryAllDeclaredMethods": True,
            "allPublicConstructors": True,
            "allDeclaredConstructors": True,
            "allPublicMethods": True,
            "allDeclaredMethods": True,
            "allPublicFields": True,
            "allDeclaredFields": True,
            "allPublicClasses": True,
            "allDeclaredClasses": True
        }


def create_config_file(bal_files):
    context = ConfigContext()
    for file in bal_files:
        add_to_config(context, file)
    return context.generate_output()


def add_to_config(context, file_name):
    file_content = read_bal_file(file_name)
    for match in re.finditer(JAVA_CONSTRUCTOR_PATTERN, file_content):
        context.add_method(parse_constructor_body(match.group(1)))
    for match in re.finditer(JAVA_METHOD_PATTERN, file_content):
        context.add_method(parse_method_body(match.group(1)))


def parse_method_body(method_body):
    name = get_first_group(NAME_PATTERN, method_body)
    class_name = get_first_group(CLASS_PATTERN, method_body)
    try:
        param_body = get_first_group(PARAM_PATTERN, method_body)
        params = list(map(lambda each: each.strip().strip('"'), param_body.split(",")))
    except:
        params = []
    return class_name, name, params


def parse_constructor_body(constructor_body):
    class_name = get_first_group(CLASS_PATTERN, constructor_body)
    try:
        param_body = get_first_group(PARAM_PATTERN, constructor_body)
        params = list(map(lambda each: each.strip().strip('"'), param_body.split(",")))
    except:
        params = []
    return class_name, "<init>", params


def get_first_group(pattern, string):
    m = re.search(pattern, string)
    if m is None:
        raise Exception(f'failed to match pattern {pattern} with string {string}')
    return m.group(1)


def read_bal_file(file_name):
    with open(file_name) as file:
        return "\n".join(list(map(lambda line: line.strip(), file.readlines())))


if __name__ == "__main__":
    bal_files = sys.argv[1:]
    if len(bal_files) == 0:
        raise Exception("expect one or more bal files")
    jni_config, reflection_config = create_config_file(bal_files)
    with open("jni_config.json", "w") as file:
        file.write(jni_config)
    with open("reflection_config.json", "w") as file:
        file.write(reflection_config)
