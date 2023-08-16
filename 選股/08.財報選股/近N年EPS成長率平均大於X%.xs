{@type:filter}
input: N(5, "期別"), X(10, "平均EPS成長率(%)");
setbarfreq("Y");

SetTotalBar(N+3);

Value1 = Average(RateOfChange(GetField("每股稅後淨利(元)","Y"), 1), N);

Ret = Value1 > X;

OutputField1(Value1, "平均EPS成長率(%)");


