{@type:filter}
input: period(80, "計算區間");
input: v1(3000, "融資減少張數");

SetTotalBar(3);

value1 = highestbar(close,period);
value2 = GetField("融資餘額張數")[value1] - GetField("融資餘額張數");

if  value2 > v1 and 
	trueall(close > close[1],3)
then ret=1;

OutputField1(value2, "融資減少張數");

