# DMI (趨向指標)

```xs
input: Length(14, "天數");
variable: pdi_value(0), ndi_value(0), adx_value(0);

DirectionMovement(Length, pdi_value, ndi_value, adx_value);

// 初始區波動較大, 先不繪出
//
if CurrentBar < Length then
 begin
	pdi_value = 0;
	ndi_value = 0;
	adx_value = 0;
 end;
 
Plot1(pdi_value, "+DI");
Plot2(ndi_value, "-DI");
Plot3(adx_value, "ADX");
```

趨向指標（DMI，Directional Movement Index）是一種用於判斷市場趨勢強度和方向的技術指標。它由兩個部分組成：正向動向指數（+DI）和負向動向指數（-DI），以及平均趨向指數（ADX）。這個指標的目的是幫助交易者確定市場的趨勢情況，以及是否適合進行趨勢跟隨型的交易。

- 趨向指標的應用包括：
  1. 確認趨勢方向：+DI和-DI的變化可以幫助交易者確定市場的趨勢方向。當+DI高於-DI時，可能表示市場處於上升趨勢；當-DI高於+DI時，可能表示市場處於下降趨勢。

  2. 評估趨勢強度：ADX可以用來評估趨勢的強度。較高的ADX值通常表示趨勢較強，較低的ADX值則表示趨勢較弱或市場處於橫盤區間。

  3. 避免過度交易：當ADX較低時，可能表示市場處於橫盤或無明顯趨勢時，交易者可能會選擇避免過度交易。