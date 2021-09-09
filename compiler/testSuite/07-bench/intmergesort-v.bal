// merge sort

import ballerina/io;

public function main() {
    int len = 1000000;
    int a = 16807;
    int m = 2147483647;
    int x = 17;
    int[] v = [];
    io:println(len); // @output 1000000
    foreach int i in 0 ..< len {
        v.push(x);
        x = x*a % m;
    }
    int[] s = sort(v);
    io:println(s.length() == len); // @output true
    foreach int i in 0 ..< len - 1 {
        if s[i] > s[i + 1] {
            io:println(false);
        }
    }
    io:println(checksum(v) == checksum(s)); // @output true
}

function checksum(int[] v) returns int {
    int c = 0;
    foreach int i in 0 ..< v.length() {
        c = c ^ v[i];
    }
    return c;
}

// Does not modify v
function sort(int[] v) returns int[] {
    if v.length() <= 1 {
        return v;
    }
    int mid = v.length() / 2;
    int[] list1 = [];
    foreach int i in 0 ..< mid {
        list1.push(v[i]);
    }
    int[] list2 = [];
    foreach int i in mid ..< v.length() {
        list2.push(v[i]);
    }
    return merge(sort(list1), sort(list2));
}

function merge(int[] v1, int[] v2) returns int[] {
    int[] result = [];
    int i1 = 0;
    int i2 = 0;
    int len1 = v1.length();
    int len2 = v2.length();
    while true {
        if i1 < len1 {
            if i2 < len2 {
                if v1[i1] <= v2[i2] {
                    result.push(v1[i1]);
                    i1 = i1 + 1;
                }
                else {
                    result.push(v2[i2]);
                    i2 = i2 + 1;
                }
                continue;
            }
        }
        break;
    }
    while i1 < len1 {
        result.push(v1[i1]);
        i1 = i1 + 1;
    }
    while i2 < len2 {
        result.push(v2[i2]);
        i2 = i2 + 1;
    }
    return result;
}