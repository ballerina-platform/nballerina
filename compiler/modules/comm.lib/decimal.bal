public function toDecimal128(decimal val) returns [int, int] {
    string stringRep = val.toString();
    // this assumes toString generates a valid string representation ["+"|"-"]d+["."d+]["E"("+"|"-")d+]
    int sign = stringRep[0] == "-" ? (1 << 63) : 0;
    int? dot = stringRep.indexOf(".");
    int sFirst = stringRep[0] is "+"|"-" ? 1 : 0; // index of first digit of significant
    int? exponentStartIndex = stringRep.indexOf("E");
    int sLast = exponentStartIndex is () ? stringRep.length() - 1 : exponentStartIndex - 1; // index of last digit of significant
    int exponent = exponentStartIndex is () ? 0 : checkpanic int:fromString(stringRep.substring(exponentStartIndex + 1));
    if dot !is () { // we have a dot in significant
        exponent -= (sLast - dot);
    }
    byte[] significantBcd = from int i in sFirst ... sLast where i != dot select <byte>checkpanic int:fromString(stringRep[i]);
    while exponent - 6111 > 0 {
        // exponent is too large for exponent field
        significantBcd.push(0);
        exponent -= 1;
    }
    if significantBcd.length() > 34 {
        panic error("overflowing significant"); // this should not happen since we are starting from a decimal
    }
    int paddingLen = 34 - significantBcd.length();
    if paddingLen > 0 {
        byte[] paddedSignificant = from int i in 0 ..< paddingLen select 0;
        paddedSignificant.push(...significantBcd);
        significantBcd = paddedSignificant;
    }
    int:Unsigned32[] dpds = from int index in  0 ... 10 select getDpd(significantBcd, (index * 3) + 1);
    int bottom = sign | combination(exponent, significantBcd) | (dpds[0] << 36) | (dpds[1] << 26) | (dpds[2] << 16) | (dpds[3] << 6) | (dpds[4] >> 4);
    int top = (dpds[4] & 0xf) << 60 | (dpds[5] << 50) | (dpds[6] << 40) | (dpds[7] << 30) | (dpds[8] << 20) | (dpds[9] << 10) | dpds[10];
    return [top, bottom];
}

function getDpd(byte[] significantBcd, int startingIndex) returns int:Unsigned16 {
    byte[] bcds = from int index in startingIndex ..< startingIndex + 3 select significantBcd[index];
    boolean[] isSmall = from byte bcd in bcds select bcd < 8;
    int encoding = ((bcds[0] & 1) << 7) | ((bcds[1] & 1) << 4) | (bcds[2] & 1); // these bit positions are constant in all encodings
    // checked in the order of most common to least common
    if isSmall[0] && isSmall[1] { // combine d3 being large and small since same result
        encoding = (bcds[0] << 7) | (bcds[1] << 4) | bcds[2];
    }
    else {
        // at least 1 large
        encoding |= 1 << 3;
        int de = (bcds[1] >> 1) & 3;
        int gh = (bcds[2] >> 1) & 3;
        if isSmall[0] && isSmall[2] {
            encoding |= (bcds[0] << 7) | (gh << 5) | 2;
        }
        else if isSmall[1] && isSmall[2] {
            encoding |= (gh << 8) | (de << 5) | 4;
        }
        else{
            // at least 2 large
            encoding |= 14; // 111_
            if isSmall[2] {
                encoding |= (gh << 8);
            }
            else if isSmall[1] {
                encoding |= (de << 8) | 32;
            }
            else if isSmall[0] {
                encoding |= (bcds[0] << 7) | 64;
            }
            else {
                // all large
                encoding |= 110; // 11_111_
            }
        }
    }
    return <int:Unsigned16> encoding;
}

function combination(int exponent, byte[] significantBcd) returns int {
    int uExp = exponent + 6176; // Biased exponent
    int expTop = uExp >> 12;
    int expBottom = uExp & 0xfff;
    int comb;
    byte msd = significantBcd.length() != 34 ? 0 : significantBcd[0];
    if msd < 8 {
        comb = expTop << 61;
    }
    else {
        comb = 0x6000000000000000 | (expTop << 59);
    }
    comb |= (msd << 58) | (expBottom << 46);
    return comb;
}
