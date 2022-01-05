public type BinaryenIntType "i64"|"i32"|"i16"|"i8"|"i1";

class BinaryenModule{
    function addFunctionImport(){

    }

    function localGet(){
        
    }

    function addFunctionExport(){

    }

    function print(){

    }

    function dispose(){

    }
}

class BinaryenType{

}

class BinaryenExpression{

}

class BinaryenCall{
    
}

function makeConst(BinaryenExpression expr) returns BinaryenExpression{

}

function makeTypeInt32() returns BinaryenIntType{
    return "i32";
}

function makeTypeNone() returns BinaryenType{

}
function makeLiteralInt32(int value) returns BinaryenType{

}

function makeNop() returns BinaryenExpression{

}

function makeReturn() returns BinaryenExpression{

}
