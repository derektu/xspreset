{@type:sensor}
if barfreq <>"Min" or barinterval<> 1 then raiseruntimeerror("歹勢，本腳本只適用於1分鐘線");

variable:count(0);

if date<>date[1] then count=0;
count=count+1;
  
if GetField("開盤價","D")> GetField("收盤價","D")[1]*1.025
and count>5
and lowest(low[1],count-1)*1.015>highest(high[1],count-1)
and close =highest(high,count)
then ret=1;