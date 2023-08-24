# CCI (商品通道指標)

```xs
input: 
Length1(14,"天數一"), 
Length2(28,"天數二"), 
Length3(42,"天數三"),
UpBaseLine(100,"上基準線"), 
MidBaseLine(0,"中基準線"), 
UnderBaseLine(-100,"下基準線");

Plot1(CommodityChannel(Length1), "CCI1");
Plot2(CommodityChannel(Length2), "CCI2");
Plot3(CommodityChannel(Length3), "CCI3");
plot4(UpBaseLine, "上基準線", checkbox:=0);
plot5(MidBaseLine, "中基準線", checkbox:=0);
plot6(UnderBaseLine, "下基準線" , checkbox:=0);
```

商品通道指標（CCI）是一種技術分析指標，用於評估價格是否已經偏離其平均價格。幫助交易者識別市場是否處於過度買入或過度賣出的狀態。

- CCI的應用包括：
  1. 過度買賣信號：當CCI的值超過一定的閾值時，可能表示市場處於過度買入狀態，可能會出現價格的下跌。相反，當CCI的值低於一定的閾值，可能表示市場處於過度賣出狀態，可能會出現價格的上漲。

  2. 價格轉折點預測：CCI的變化可以幫助交易者預測價格的轉折點。當CCI從正數轉為負數時，可能表示價格即將下跌；當CCI從負數轉為正數時，可能表示價格即將上漲。

  3. 判斷趨勢強度：CCI的絕對值大小可以用來判斷市場的趨勢強度。較大的絕對值通常意味著市場正在出現強勢趨勢。