type Block record {

};

type Branch record {

};

class Relooper {
    private Module module;
    private Branch[] branches;
    private Block[] blocks;
    private int blockId;
    private Block[] entries;
    private Block root;

    function init(Module module) {

    }

    function addBranch(Block fromB, Block to, Expression? condition = ()) {
        panic error("unimplemented");
    }

    function addBlock(Expression code) returns Block {
        panic error("unimplemented");        
    }

    function calculate(Block entry) {
        panic error("unimplemented");        
    }

    function render(Block body, int labelHelper) returns Expression {
        panic error("unimplemented");    
    }

}
