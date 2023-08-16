{@type:filter}
input:X(0, "元");

variable: N(4);

SetTotalBar(3); 

Value1 = Summation(GetField("EPS","Q"),N);
if Value1 < X then ret=1; 

OutputField1(Value1, "EPS合計"); 
