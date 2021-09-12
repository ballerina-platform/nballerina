import ballerina/io;

public function main() {
    any[] days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"];
    map<any> dayNumber = {};
    foreach int i in 0 ..< days.length() {
        dayNumber[<string>days[i]] = i + 1;
    }
    io:println(dayNumber["Sunday"]); // @output 7
}
