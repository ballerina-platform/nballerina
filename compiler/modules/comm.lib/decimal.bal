public function toDecimal128(decimal val) returns [int, int] {
    string stringRep = val.toString();
    // this assumes toString generates a valid string representation ["+"|"-"]d+["."d+]["E"("+"|"-")d+]
    int sign = stringRep[0] == "-" ? (1 << 63) : 0; // 0 -> positive  -> negative
    int? dot = stringRep.indexOf("."); // position of .
    int stringRepLen = stringRep.length();
    int cFirst = stringRep[0] is "+"|"-" ? 1 : 0; // index of first digit of coefficient
    int? exponentStartIndex = stringRep.indexOf("E");
    int cLast = exponentStartIndex is () ? stringRepLen - 1 : exponentStartIndex - 1; // index of last digit of coefficient
    int exponent = exponentStartIndex is () ? 0 : checkpanic int:fromString(stringRep.substring(exponentStartIndex + 1));
    if dot !is () { // we have a dot in significant
        exponent -= (cLast - dot);
    }
    byte[] significant_BCD = from int i in cFirst ... cLast where i != dot select <byte>checkpanic int:fromString(stringRep[i]);
    while exponent - 6111 > 0 {
        significant_BCD.push(0);
        exponent -= 1;
    }
    if significant_BCD.length() > 34 {
        panic error("overflowing significant"); // this should not happen since we are starting from a decimal
    }
    int:Unsigned32[] dpds = from int index in  0 ... 10 select getDpd(significant_BCD, index);

    int top = sign | combination(exponent, significant_BCD) | (dpds[0] << 36) | (dpds[1] << 26) | (dpds[2] << 16) | (dpds[3] << 6) | (dpds[4] >> 4);
    int bottom = (dpds[4] & 0xf) << 60 | (dpds[5] << 50) | (dpds[6] << 40) | (dpds[7] << 30) | (dpds[8] << 20) | (dpds[9] << 10) | dpds[10];
    return [top, bottom];
}

function getDpd(byte[] significant_Bcds, int decletIndex) returns int:Unsigned32 {
    int offset = 33 - significant_Bcds.length();
    int starting_index = (3 * decletIndex) - offset;
    if starting_index + 2 < 0 {
        return 0; //leading zero
    }
    else {
        byte d1 = starting_index >= 0 ? significant_Bcds[starting_index] : 0; //Xabc
        byte d2 = starting_index + 1 >= 0 ? significant_Bcds[starting_index + 1] : 0; //Ydef
        byte d3 = starting_index + 2 >= 0 ? significant_Bcds[starting_index + 2] : 0; //Zghi
        boolean d1Small = d1 < 8;
        boolean d2Small = d2 < 8;
        boolean d3Small = d3 < 8;
        int encoding = ((d1 & 1) << 7) | ((d2 & 1) << 4) | (d3 & 1); // these bit positions are constant in all encodings
        // checked in the order of most common to least common
        if d1Small && d2Small { // combine d3 being large and small since same result
            encoding = (d1 << 7) | (d2 << 4) | d3;
        }
        else {
            // at least 1 large
            encoding |= 1 << 3;
            int de = (d2 >> 1) & 3;
            int gh = (d3 >> 1) & 3;
            if d1Small && d3Small {
                encoding |= (d1 << 7) | (gh << 5) | 2;
            }
            else if d2Small && d3Small {
                encoding |= (gh << 8) | (de << 5) | 4;
            }
            else{
                // at least 2 large
                encoding |= 14; // 111_
                if d3Small {
                    encoding |= (gh << 8);
                }
                else if d2Small {
                    encoding |= (de << 8) | 32;
                }
                else if d1Small {
                    encoding |= (d1 << 7) | 64;
                }
                else {
                    // all large
                    encoding |= 110; // 11_111_
                }
            }
        }
        return <int:Unsigned32>encoding;
    }
}

function combination(int exponent, byte[] significantBcds) returns int {
    int uExp = exponent + 6176; // Biased exponent
    int expTop = uExp >> 12;
    int expBottom = uExp & 0xfff;
    int comb;
    byte msd = significantBcds.length() != 34 ? 0 : significantBcds[0];
    if msd < 8 {
        comb = expTop << 61;
    }
    else {
        comb = 0x6000000000000000 | (expTop << 59);
    }
    comb |= (msd << 58) | (expBottom << 46);
    return comb; // top bit is sign
}
