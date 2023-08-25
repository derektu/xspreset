# ACC 加速量指標

```xs
input: Length(10, "天數");

value1 = Close - Close[Length]; 
value2 = value1 - value1[Length];

Plot1(value2, "ACC");
```

從公式上來看，MTM指標是計算股價變化的速度，而ACC指標則是計算[MTM指標](TODO)的N日變化，所以從物理上的原理，ACC指標代表的是行情價位變化的*加速度*。

當ACC值為正值時，表示行情不僅是在上昇當中，同時還是以加速度愈來愈強勁的走勢在上昇中；而當ACC值為負值時，表示行情不僅是在下降當中，同時還是以加速度愈跌愈凶的走勢在下降當中。
