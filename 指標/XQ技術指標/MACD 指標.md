# MACD指標

```xs
input: FastLength(12, "DIF短天數"), SlowLength(26, "DIF長天數"), MACDLength(9, "MACD天數");
variable: price(0);

price = WeightedClose();

Value1 = XAverage(price, FastLength) - XAverage(price, SlowLength);
Value2 = XAverage(Value1, MACDLength) ;
Value3 = Value1 - Value2 ;

Plot1(Value1, "DIF");
Plot2(Value2, "MACD");
Plot3(Value3, "Osc");
```

MACD的英文原名為 Moving Average Convergnece & Divergence，也就是收斂發散移動平均線的意思，所以顧名思義它是移動平均線的一種。
MACD利用二條快速與慢速指數移動平均線的收斂或發散來判斷價格走勢。

這個指標有三個參數，分別是快線的天數(通常是12)，慢線的天數(通常是26)，以及平滑的天數(通常是9)。

指標計算的方式如下：

- 先計算短天期價格走勢的EMA，價格走勢通常會使用加權收盤價(WeightedClose)，也就是(High+Low+2*Close)/4，
- 接下來計算短天期價格走勢的EMA，
- 計算DIF = 短天期的EMA - 長天期的EMA，一般稱之為快線，
- 計算MACD = DIF的EMA，一般稱之為慢線，
- 計算OSC = DIF - MACD，也就是快線跟慢線的差異

繪製MACD指標時會用線條的方式繪製DIF以及MACD，另外以柱狀圖繪製OSC。

在應用面上，常常會觀察柱狀圖(OSC)的變化。當OSC由負轉正(也就是DIF由下方往上穿越MACD時)，這時候形成MACD黃金交叉，可以視買進訊號。反之如果OSC由正轉負產生死亡交叉，這通常是賣出訊號。
