{@type:sensor}
// 帶量跌破均線
//
input: Length(10, "期數"), VolFactor(2, "成交量放大倍數");

settotalbar(3);
setbarback(Length);

if close < Average(close, Length) and  close[1] >  Average(close, Length) and
   volume > Average(volume, Length) * VolFactor 
then ret=1;  



        