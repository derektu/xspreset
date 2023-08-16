{@type:sensor}
input:Length(5, "計算期數");
input:times(3, "價量背離次數");
input:TXT("建議使用日線", "使用說明");

variable:count(0);

settotalbar(Length + 3);

count = CountIf(close > close[1] and volume < volume[1], Length);

if count > times then 
ret = 1;

