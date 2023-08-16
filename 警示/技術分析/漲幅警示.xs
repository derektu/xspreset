{@type:sensor}
input: Length(5, "計算期數"), Percent(3, "累計上漲幅度(%)");

settotalbar(3);
setbarback(Length);

Ret = Rateofchange(Close, Length) > Percent;



