import ballerina/io;

type Part Part[];

public function main() {
    Part yin = [];
    Part yang = [];
    yin[0] = yang;
    yang[0] = yin;
    io:println(yin == yang); // @output true

    Part father = [];
    Part son = [];
    Part sprit = [];
    father[0] = son;
    son[0] = sprit;
    sprit[0] = father;
    io:println(father == son); // @output true

    io:println(father == yin); // @output true
}
