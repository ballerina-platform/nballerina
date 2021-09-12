// @productions map-type-descriptor mapping-constructor-expr string string-literal list-type-descriptor range-expr foreach-stmt list-constructor-expr type-cast-expr additive-expr assign-stmt local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    any[] days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"];
    map<any> dayNumber = {};
    foreach int i in 0 ..< days.length() {
        dayNumber[<string>days[i]] = i + 1;
    }
    io:println(dayNumber["Sunday"]); // @output 7
}
