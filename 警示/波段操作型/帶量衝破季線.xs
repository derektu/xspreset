{@type:sensor}
//股價長期低於季線
//帶量突破季線
input: PriceLength(66, "季線計算期數");
input: BelowLength(66, "低於季線期數");
input: VolLength(20, "均量期數");
input: Volpercent(20, "量增幅度%");
input:TXT("建議使用日線", "使用說明");

settotalbar(BelowLength + 8);
setbarback(maxlist(PriceLength,VolLength));

variable: PriceAverage(0); PriceAverage= average(Close,PriceLength);

if Close crosses over PriceAverage and
   volume > Average(volume[1],VolLength)* (1+Volpercent/100) and
   trueall(close[1] < PriceAverage[1],  BelowLength-1) then
   ret = 1;
