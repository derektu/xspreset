# KDJ 隨機指標

```xs
input: Length(9, "天數"), RSVt(3, "RSVt權數"), Kt(3, "Kt權數");
input: JType(0, "J類型", inputKind:=Dict(["3K-2D", 0], ["3D-2K", 1]));

variable: rsv(0), kk(0), dd(0), jj(0);

Stochastic(Length, RSVt, Kt, rsv, kk, dd);

if JType = 0 then
	jj = 3 * kk - 2 * dd
else
	jk = 3 * dd - 2 * kk;

Plot1(kk, "K(%)");
Plot2(dd, "D(%)");
Plot3(jj, "J(%)");
```

KDJ指標是[KD指標](TODO)的延伸，除了繪製指標內的K值跟D值之外，還會多繪製一個J值。

J值通常有兩種算法，一種是3K - 2D，另外一種則是3D - 2K。

我們可以把J值看成是K/D數值之間的乖離程度。通常如果J值接近100的話，可能股價已經到了頭部，反之如果J值趨近0的話，則表示可能接近底部。
