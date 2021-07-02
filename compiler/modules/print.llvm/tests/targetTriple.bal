import ballerina/test;

function basicMainLinux() returns Module {
    Module m = basicMain();
    m.setTarget("x86_64-pc-linux-gnu");
    return m;
}

function basicMainDarwinX86() returns Module {
    Module m = basicMain();
    m.setTarget("x86_64-apple-darwin");
    return m;
}


function basicMainDarwinARM() returns Module {
    Module m = basicMain();
    m.setTarget("aarch64-apple-darwin");
    return m;
}

function basicMainWin() returns Module {
    Module m = basicMain();
    m.setTarget("x86_64-pc-win32");
    return m;
}

@test:Config {}
function testBasicMainLinux() returns error? {
    return runTest(basicMainLinux, "basic_main_linux.ll");
}

@test:Config {}
function testBasicMainDarwinX86() returns error? {
    return runTest(basicMainDarwinX86, "basic_main_darwin_x86.ll");
}

@test:Config {}
function testBasicMainDarwinARM() returns error? {
    return runTest(basicMainDarwinARM, "basic_main_darwin_arm.ll");
}

@test:Config {}
function testBasicMainWin() returns error? {
    return runTest(basicMainWin, "basic_main_win.ll");
}
