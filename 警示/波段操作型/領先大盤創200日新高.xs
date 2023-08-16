{@type:sensor}
input:period(200,"計算創新高區間");

value1=GetSymbolField("tse.tw","收盤價");
value2=highest(value1,period);//大盤區間高點

if value1<value2//大盤未過新高
and close=highest(close,period)//股價創新高
and barslast(close=highest(close,period))[1]>100
and GetSymbolField("tse.tw","收盤價")>average(GetSymbolField("tse.tw","收盤價"),10)
and average(volume,100)>1000
then ret=1;