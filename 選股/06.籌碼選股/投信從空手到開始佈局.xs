{@type:filter}
input: r1(500, "先前買超上限張數");
input: r2(5000, "近一日買超金額下限(萬元)");
input: length(20, "投信布局天數");

setTotalBar(3);

if trueall(GetField("投信買賣超","D")[1] < r1, length) and 
   GetField("投信買賣超","D") * close > r2 * 10
then ret=1;

OutputField1(GetField("投信買賣超","D"), "投信買賣超(張)");