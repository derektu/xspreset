# AR 指標

```xs
input: Length(26, "天數");
variable: sum(0), ar(0);

// N日的(最高 - 開盤)
value1 = Summation(High - Open, Length);

// N日的(開盤 - 最低)
value2 = Summation(Open - Low, Length);

if value2 <> 0 then	
	value3 = value1 / value2;

Plot(1, value3, "AR");
```

AR指標的公式是計算「每日最高價與每日開盤價之間的N日累積差異」與「每日開盤價與每日最低價之間的N日累積差異」的比值，所以可以用來觀察盤中的氣勢。

這個指標通常會跟[BR指標](TODO)一起比對著看：使用BR指標觀察開盤前對股價的預期心理，使用AR指標觀察開盤後股價的實際表現。

當BR、AR值一齊向上時，表示開盤前看好，開高後果然繼續向上；如果BR、AR一齊向下時，表示開低後果然繼續看壞。假如BR向上而AR卻向下，則表示開盤前看好，開高後卻後繼乏力，對後巿要當心；如果BR向下而AR卻向上，表示開盤前沒有信心，開低後卻逐漸收高，轉多的機會較大。
