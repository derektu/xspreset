{@type:filter}
// 帶量突破均線
//
input: Length(10, "期數"), VolFactor(2, "成交量放大倍數");

settotalbar(3);

if close > Average(close, Length) and  close[1] <  Average(close, Length) and
   volume > Average(volume[1], Length) * VolFactor 
then ret=1;  



        