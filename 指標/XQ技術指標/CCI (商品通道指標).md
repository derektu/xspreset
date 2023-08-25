# CCI 商品通道指標

```xs
input: Length(14,"天數");

var: avgtp(0);
var: idx(0);
var: sumDist(0);

// 過去N日 TypicalPrice的平均值
avgtp = Average(TypicalPrice, Length);

// 過去N日 TypicalPrice與平均值的平均差異
sumDist = 0;
for idx = 0 to length - 1 begin
	sumDist = sumDist + AbsValue(avgtp[idx] - TypicalPrice[idx]); 
end;
sumDist = sumDist / length;

// 今日TypicalPrice與N日平均值的偏移比例
if sumDist <> 0 then
  value1 = (TypicalPrice - avgtp) / (0.015 * sumDist)
else
  value1 = 0;

Plot(1, value1, "CCI");
```

商品通道指標（CCI）是一種技術分析指標，用於衡量股價與常態分佈範圍之間的差異，藉此判斷是否有超買或是超賣的現象。

CCI的數值大多落於+100 ~ -100之間，當CCI的值超出這個範圍代表市場價格處於異常強勢或弱勢中，預示著將可能出現新的趨勢。

當CCI指標由下向上穿越-100時，可能代表行情即將結束下跌趨勢，轉為盤整偏多，是買進的訊號。

當CCI指標由上往下跌破100時，可能代表行情即將結束上漲趨勢，轉為盤整偏空，是賣出的訊號。
