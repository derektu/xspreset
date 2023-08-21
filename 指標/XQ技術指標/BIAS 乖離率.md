# BIAS(乖離率)指標

```xs
input: Length(5, "天數");

value1 = Average(Close, Length);
value2 = (Close - value1) * 100 / value1;

Plot1(value2, "BIAS(%)");
```

股價乖離率(Bias)的公式是計算股價與過去N日平均值的差異程度(%)，這個值可能是正的，也可能是負的。

乖離率可以用來觀察均線回歸的現象。當乖離率過大，或是過小時(負值)，可能會是趨勢的反轉點。

