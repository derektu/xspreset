# BBand 布林通道指標

```xs
input: 
	Length(20, "天數"), 
	UpperBand(2, "上通道標準差倍數"), 
	LowerBand(2, "下通道標準差倍數");

variable: mid(0), up(0), down(0);

up = bollingerband(Close, Length, UpperBand);
down = bollingerband(Close, Length, -1 * LowerBand);
mid = (up + down) / 2;

plot1(up, "UB");
plot2(mid, "BBandMA");
plot3(down, "LB");
```

BBand指標是布林通道指標(Bollinger Band)的簡稱。計算的方式是先繪製出N日的均線，然後在這個均線的上方/下方分別繪製加減2個標準差(StandardDev)的上緣/下緣軌道。

當近期股價波動較大時，標準差會變大，所以上緣下緣跟均線的間隔會變大，而當股價波動收斂時，標準差變小，上緣跟下緣就會往中間的均線靠近。

從統計的觀點來看，股價大部分的時間都會落在上緣跟下緣中間，當股價接近上緣時，可以視為超買的訊號，同樣的當股價接近下緣時，可以視為超賣。