{@type:sensor}
input:DownPercent(4, "當期下跌幅度");
input:Ratio(20, "量縮程度%");
input:TieDays(3, "量縮持續期數");
input:UpTrendDays(20, "累計上漲期數");
input:RaisingRatio(20, "累計上漲幅度");

settotalbar(3);
setbarback(UpTrendDays+TieDays);

if Close[TieDays] >  close[UpTrendDays+TieDays-1] * (1+RaisingRatio/100) then
begin
  if Close< high[TieDays] * (1 - DownPercent/100) and 
     volume[TieDays] > volume *(1+Ratio/100) 
  then ret=1;
end;