# KD指標

```xx
input: Length(9, "天數"), RSVt(3, "RSVt權數"), Kt(3, "Kt權數");
variable: rsv(0), kk(0), dd(0);

Stochastic(Length, RSVt, Kt, rsv, kk, dd);

Plot1(kk, "K(%)");
Plot2(dd, "D(%)");
```

KD指標原名是「Stochastic Oscillator」，又稱隨機指標。

他是由K值跟D值兩條線組合而成，透過觀察K值與D值的位置以及相對關係來判斷股價的趨勢。

要計算KD指標之前要先計算RSV數值。

RSV的公式是（今天的收盤價-最近N天的最低價）/（最近N天的最高價-最近N天的最低價）× 100。

這個公式的分母是最近N天最高點與最低點之間的差異，而分子則是今日收盤價與N日最低點的差異。這個數值會介於0 ~ 100之間，當RSV的數值越大時，代表今日股價越接近近N日的高點，反之如果RSV的數值很小的話，則代表今日股價很接近近N日的低點。

算出RSV之後，接下來使用平滑的方式來算出K值以及D值。

K = 昨日的K值 * (2/3) + 今日的RSV * (1/3) 

D = 昨日的D值 * (2/3) + 今日的K值 * (1/3)

從公式內可以看出，K值是RSV的一個累積平滑，而D值則是K值的一個累積平滑。所以K值是快線(對股價的變化比較靈敏)，而D值則是慢線。

一般的應用，會觀察K，D的數值以及所在的位置，大致可以分為以下四種情況：

- K 值 > D 值：標的正處於上漲行情，適合偏多操作。
- K 值 < D 值：標的正處於下跌行情，適合偏空操作。
- KD值 > 80 ：標的位於超買區，價格表現相當強勢。
- KD值 < 20 ：標的位於超賣區，價格表現相當弱勢。

另外也會觀察，當K值由下往上穿越D值時，表示近期的走勢變強，稱之為KD黃金交叉，是一種多方訊號。反之如果K值由上往下跌破D值時，表示近期的走勢轉弱，稱之為KD死往交叉，是一種空方訊號。

可以使用[Stochastic](TODO)這個函數來計算RSV，K，以及D的數值。



	
	
		