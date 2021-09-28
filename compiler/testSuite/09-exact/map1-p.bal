
public function main() {
    map<int> m1 = {};
    map<any> m2 = {};
    m2["x"] = m1; // widens here
    map<any|error> m3 = <map<any|error>>m2["x"];
    m3["y"] = true; // @panic bad mapping store
}
