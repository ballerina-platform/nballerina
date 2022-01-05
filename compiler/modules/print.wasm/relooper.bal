class Relooper{

    private BinaryenModule module;
    function init(BinaryenModule module){
        self.module  = module;
    }
    function addBranch() returns BinaryenExpression{

    }

    function addBlock() returns BinaryenExpression {

    }

    function renderAndDispose returns BinaryenExpression {

    }

}

enum FlowType{
    Direct = 0,
    Break = 1,
    Continue = 2
}

class  Branch {
    Shape Ancestor = null;
    FlowType Type;
    //:TODO: Check the Expression Data type in binaryen
    string Condition; //data type is Expression in the binaryen
    //TODO: check data type Index
    Index[] SwitchValues;
    //TODO: Check Data Type Expression
    string Code;

    function init(string conditionInit, string codeInit = null){

    }

    function init(Index[] valuesInit, string codeInit = null){
        
    }

    function render(RelooperBuilder builder, Block target, boolean setLabel){

    }

}