{@type:sensor}
// RSI短天期往上穿越長天期
//
input: ShortLength(6, "短期期數"), LongLength(12, "長期期數");

settotalbar(maxlist(ShortLength,LongLength,6) * 8 + 8);

Ret = RSI(Close, ShortLength) Crosses Above RSI(Close, LongLength);



