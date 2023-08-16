{@type:filter}
input: period(5, "計算期間");
input: investorLimit(2000, "外資持股上限");
input: ratio(50, "主力買張比重(%)");
input: volLimit(500, "成交均量下限");

SetTotalBar(3);

// 主力買張比重
value1 = summation(GetField("主力買張","D"), period);
value2 = summation(volume, period);
value3 = value1 / value2 * 100;

if GetField("外資持股","D") < investorLimit and value3 > ratio and value2 > volLimit * period  
then ret=1;

OutputField1(value3, "主力買張比重(%)");

