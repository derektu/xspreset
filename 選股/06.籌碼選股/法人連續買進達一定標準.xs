{@type:filter}
input:day(5, "計算天數");
input:ratio1(40, "法人買進張數比例下限(%)");
input:times(2, "達標天數");
input:volLimit(500, "最小成交均量");

SetTotalBar(day + 3);

value1 = (GetField("外資買張") + GetField("投信買張"))/Volume * 100;
value2 = countif(value1 > ratio1, day);
if value2 >= times and average(volume, day) > volLimit then
ret = 1;

OutputField1(value1, "近日法人買進比例(%)");
