{@type:filter}
input:ratio(30, "比例下限(%)");
input:period(3, "計算區間");
input:volLimit(1000, "成交量下限(張)");

settotalbar(3);

value1 = Summation(Volume - GetField("資券互抵張數"), period);
value2 = Summation(GetField("法人買賣超張數"), period);
value3 = value2 / value1 * 100;

if value3 > ratio and volume > volLimit then
ret = 1;

OutputField1(value3, "近日法人淨買超比例(%)");

