import ballerina/io;

public function main() {
    float nan = 0.0 / 0.0;
    float pInf = 1.0 / 0.0;
    float nInf = -1.0 / 0.0;

    io:println(isNaN(nan % nan)); // @output true
    io:println(isNaN(nan % pInf)); // @output true
    io:println(isNaN(nan % 7.0)); // @output true
    io:println(isNaN(nan % 5.0)); // @output true
    io:println(isNaN(nan % 0.7)); // @output true
    io:println(isNaN(nan % 0.5)); // @output true
    io:println(isNaN(nan % 0.0)); // @output true
    io:println(isNaN(nan % -7.0)); // @output true
    io:println(isNaN(nan % -5.0)); // @output true
    io:println(isNaN(nan % -0.7)); // @output true
    io:println(isNaN(nan % -0.5)); // @output true
    io:println(isNaN(nan % -0.0)); // @output true
    io:println(isNaN(nan % nInf)); // @output true
    io:println(isNaN(nan % -nan)); // @output true

    io:println(isNaN(pInf % nan)); // @output true
    io:println(isNaN(7.0 % nan)); // @output true
    io:println(isNaN(5.0 % nan)); // @output true
    io:println(isNaN(0.7 % nan)); // @output true
    io:println(isNaN(0.5 % nan)); // @output true
    io:println(isNaN(0.0 % nan)); // @output true
    io:println(isNaN(-7.0 % nan)); // @output true
    io:println(isNaN(-5.0 % nan)); // @output true
    io:println(isNaN(-0.7 % nan)); // @output true
    io:println(isNaN(-0.5 % nan)); // @output true
    io:println(isNaN(-0.0 % nan)); // @output true
    io:println(isNaN(nInf % nan)); // @output true
    io:println(isNaN(-nan % nan)); // @output true

    io:println(isNaN(pInf % nan)); // @output true
    io:println(isNaN(pInf % pInf)); // @output true
    io:println(isNaN(pInf % 7.0)); // @output true
    io:println(isNaN(pInf % 5.0)); // @output true
    io:println(isNaN(pInf % 0.7)); // @output true
    io:println(isNaN(pInf % 0.5)); // @output true
    io:println(isNaN(pInf % 0.0)); // @output true
    io:println(isNaN(pInf % -7.0)); // @output true
    io:println(isNaN(pInf % -5.0)); // @output true
    io:println(isNaN(pInf % -0.7)); // @output true
    io:println(isNaN(pInf % -0.5)); // @output true
    io:println(isNaN(pInf % -0.0)); // @output true
    io:println(isNaN(pInf % nInf)); // @output true
    io:println(isNaN(pInf % -nan)); // @output true

    io:println(isNaN(nInf % nan)); // @output true
    io:println(isNaN(nInf % pInf)); // @output true
    io:println(isNaN(nInf % 7.0)); // @output true
    io:println(isNaN(nInf % 5.0)); // @output true
    io:println(isNaN(nInf % 0.7)); // @output true
    io:println(isNaN(nInf % 0.5)); // @output true
    io:println(isNaN(nInf % 0.0)); // @output true
    io:println(isNaN(nInf % -7.0)); // @output true
    io:println(isNaN(nInf % -5.0)); // @output true
    io:println(isNaN(nInf % -0.7)); // @output true
    io:println(isNaN(nInf % -0.5)); // @output true
    io:println(isNaN(nInf % -0.0)); // @output true
    io:println(isNaN(nInf % nInf)); // @output true
    io:println(isNaN(nInf % -nan)); // @output true


    io:println(isNaN(nan % 0.0)); // @output true
    io:println(isNaN(pInf % 0.0)); // @output true
    io:println(isNaN(7.0 % 0.0)); // @output true
    io:println(isNaN(5.0 % 0.0)); // @output true
    io:println(isNaN(0.7 % 0.0)); // @output true
    io:println(isNaN(0.5 % 0.0)); // @output true
    io:println(isNaN(0.0 % 0.0)); // @output true
    io:println(isNaN(-7.0 % 0.0)); // @output true
    io:println(isNaN(-5.0 % 0.0)); // @output true
    io:println(isNaN(-0.7 % 0.0)); // @output true
    io:println(isNaN(-0.5 % 0.0)); // @output true
    io:println(isNaN(-0.0 % 0.0)); // @output true
    io:println(isNaN(nInf % 0.0)); // @output true
    io:println(isNaN(-nan % 0.0)); // @output true

    io:println(isEqual(7.0 % pInf, 7.0)); // @output true
    io:println(isEqual(5.0 % pInf, 5.0)); // @output true
    io:println(isEqual(0.7 % pInf, 0.7)); // @output true
    io:println(isEqual(0.5 % pInf, 0.5)); // @output true
    io:println(isEqual(0.0 % pInf, 0.0)); // @output true
    io:println(isEqual(-7.0 % pInf ,-7.0)); // @output true
    io:println(isEqual(-5.0 % pInf ,-5.0)); // @output true
    io:println(isEqual(-0.7 % pInf ,-0.7)); // @output true
    io:println(isEqual(-0.5 % pInf ,-0.5)); // @output true
    io:println(isEqual(-0.0 % pInf ,-0.0)); // @output true

    io:println(isEqual(7.0 % nInf, 7.0)); // @output true
    io:println(isEqual(5.0 % nInf, 5.0)); // @output true
    io:println(isEqual(0.7 % nInf, 0.7)); // @output true
    io:println(isEqual(0.5 % nInf, 0.5)); // @output true
    io:println(isEqual(0.0 % nInf, 0.0)); // @output true
    io:println(isEqual(-7.0 % nInf ,-7.0)); // @output true
    io:println(isEqual(-5.0 % nInf ,-5.0)); // @output true
    io:println(isEqual(-0.7 % nInf ,-0.7)); // @output true
    io:println(isEqual(-0.5 % nInf ,-0.5)); // @output true
    io:println(isEqual(-0.0 % nInf ,-0.0)); // @output true

    io:println(isEqual(7.0 % 7.0, 0.0)); // @output true
    io:println(isEqual(5.0 % 7.0, 5.0)); // @output true
    io:println(isEqual(0.7 % 7.0, 0.7)); // @output true
    io:println(isEqual(0.5 % 7.0, 0.5)); // @output true
    io:println(isEqual(0.0 % 7.0, 0.0)); // @output true
    io:println(isEqual(-7.0 % 7.0 ,-0.0)); // @output true
    io:println(isEqual(-5.0 % 7.0 ,-5.0)); // @output true
    io:println(isEqual(-0.7 % 7.0 ,-0.7)); // @output true
    io:println(isEqual(-0.5 % 7.0 ,-0.5)); // @output true
    io:println(isEqual(-0.0 % 7.0 ,-0.0)); // @output true

    io:println(isEqual(7.0 % 5.0, 2.0)); // @output true
    io:println(isEqual(-7.0 % 5.0 ,-2.0)); // @output true

    io:println(isEqual(7.0 % -7.0, 0.0)); // @output true
    io:println(isEqual(5.0 % -7.0, 5.0)); // @output true
    io:println(isEqual(0.7 % -7.0, 0.7)); // @output true
    io:println(isEqual(0.5 % -7.0, 0.5)); // @output true
    io:println(isEqual(0.0 % -7.0, 0.0)); // @output true
    io:println(isEqual(-7.0 % -7.0 ,-0.0)); // @output true
    io:println(isEqual(-5.0 % -7.0 ,-5.0)); // @output true
    io:println(isEqual(-0.7 % -7.0 ,-0.7)); // @output true
    io:println(isEqual(-0.5 % -7.0 ,-0.5)); // @output true
    io:println(isEqual(-0.0 % -7.0 ,-0.0)); // @output true

    io:println(isEqual(7.0 % -5.0, 2.0)); // @output true
    io:println(isEqual(-7.0 % -5.0 ,-2.0)); // @output true
}

function isNaN(float val) returns string {
	if float:isNaN(val) {
		return "true";
	}
	return "false";
}

function isEqual(float lhs, float rhs) returns string {
    if lhs == rhs {
        return "true";
    } 
else {
        return "false";
    }
}
