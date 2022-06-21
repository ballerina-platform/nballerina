import wso2/nballerina.types as t;
//import wso2/nballerina.front.syntax as s;

public function typeWitnessToString(t:Witness witness) returns string {
    // todo: convert to ast expr and then use tostring of that.
    return witness.get().toString();
}