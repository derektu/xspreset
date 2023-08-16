{@type:sensor}
// MTM往下跌破0軸
//
Input: Length(10, "期數");

settotalbar(maxlist(Length,6) + 8);

Ret = Momentum(Close, Length) Crosses Below 0;



