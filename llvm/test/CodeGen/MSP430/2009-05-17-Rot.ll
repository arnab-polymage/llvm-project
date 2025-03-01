; RUN: llc < %s -mtriple=msp430

define i16 @rol1u16(i16 %x.arg) nounwind {
        %retval = alloca i16
        %x = alloca i16
        store i16 %x.arg, ptr %x
        %1 = load i16, ptr %x
        %2 = shl i16 %1, 1
        %3 = load i16, ptr %x
        %4 = lshr i16 %3, 15
        %5 = or i16 %2, %4
        store i16 %5, ptr %retval
        br label %return
return:
        %6 = load i16, ptr %retval
        ret i16 %6
}
