define i64 @folded_multiply(i64 %x, i64 %y) readnone {
    %x128 = zext i64 %x to i128
    %y128 = zext i64 %y to i128
    %xy = mul i128 %x128, %y128
    %xylo = trunc i128 %xy to i64
    %xyshr = lshr i128 %xy, 64
    %xyhi = trunc i128 %xyshr to i64
    %ret = xor i64 %xylo, %xyhi
    ret i64 %ret
}
