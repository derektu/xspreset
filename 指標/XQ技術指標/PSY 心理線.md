# PSY 心理線指標

```xs
input: Length(12, "天數");

Value1 = 100 * CountIf(Close > Close[1], Length) / Length;

Plot1(Value1, "PSY");
```

PSY指標統計最近N日內上漲日數的比例，用來判斷股價的強弱趨勢。

PSY一般合理的變動範圍值是在20至75之間。而當PSY值高於75以上或是低於25以下時，可以視行情為進入超買區與超賣區中，行情回跌或回昇等反轉出現的可能性將逐漸增加。
        
		