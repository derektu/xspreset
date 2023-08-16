{@type:filter}
input:N(10, "期別");
input:X(5, "跌幅%");

SetTotalBar(3); 

Value1 = RateOfChange(GetField("收盤價"),N);
if Value1 < -1 * X then ret=1;
 
OutputField1(Value1, "近期跌幅%"); 