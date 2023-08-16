{@type:sensor}
input: Length(5, "計算期數"), Percent(3, "累計下跌幅度(%)");

settotalbar(3);
setbarback(length);

Ret = RateOfChange(Close, Length) < -1 * Percent;



