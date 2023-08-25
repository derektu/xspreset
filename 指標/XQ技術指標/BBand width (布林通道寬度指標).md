# BBand Width (布林通道寬度指標)

```xs
input: Length(20, "天數"), UpperBand(2, "上"), LowerBand(2, "下"), EMALength(3, "EMA");
variable: up(0), down(0), mid(0), bbandwidth(0), ema(0);

up = bollingerband(Close, Length, UpperBand);
down = bollingerband(Close, Length, -1 * LowerBand);
mid = (up + down) / 2;

bbandwidth = 100 * (up - down) / mid;
ema = XAverage(bbandwidth, EMALength);

Plot1(bbandwidth , "BBand width(%)");
Plot2(ema, "Band% EMA");

input: 
	Length(20, "天數"), 
	UpperBand(2, "上通道標準差倍數"), 
	LowerBand(2, "下通道標準差倍數");

variable: mid(0), up(0), down(0), bbandwidth(0);

up = bollingerband(Close, Length, UpperBand);
down = bollingerband(Close, Length, -1 * LowerBand);
mid = (up + down) / 2;

bbandwidth = 100 * (up - down) / mid;
plot1(bbandwidth, "width(%)");
```

布林通道寬度指標（BBand width）是[布林通道指標](TODO)的另外一種表現方式。

布林通道指標統計出N日的均線，同時根據標準差繪製出均線的上通道跟下通道兩條線，通常會把布林通道指標跟K線畫在一起觀察。

而布林通道寬度指標則是計算上通道跟下通道的寬度差異，可以比較直覺的觀察出通道寬度的變化。

假設上下通道的倍數是2，那麼從公式上推導，

- 上通道 = 均線 + 2 * StdDev
- 下通道 = 均線 - 2 * StdDev
- 布林通道寬度 = 100 * (上通道 - 下通道) / 均線 = 100 * 4 * StdDev / 均線

也就是說，布林通道寬度指標代表的是近日價格波動的幅度(StdDev)。當布林通道寬度變大時，代表近期股價波動較大，反之當布林通道寬度變小時，則表示近期股價波動收斂。