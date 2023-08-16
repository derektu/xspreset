{@type:indicator}
condition999 = symbolexchange = "TW" or symbolexchange = "TE";//台股+興櫃
condition997 = condition999 and (symboltype = 2 or symboltype = 4);//個股+權證+興櫃

if condition997 = false //個股+權證+興櫃
	then raiseruntimeerror("不支援此商品");


if barfreq <> "D" and barfreq <> "AD" 
	then raiseruntimeerror("不支援此頻率");

if GetField("市場總分點數") <> 0 then value1 = GetField("分公司交易家數")/GetField("市場總分點數");

plot1(GetField("分公司交易家數"),"交易家數",checkbox:=1,axis:=1,ScaleLabel:=slfull,ScaleDecimal:=sd0);//單位：家
plot2(value1,"參與率",checkbox:=0,axis:=2,ScaleLabel:=slpercent,ScaleDecimal:=sd2);//請RD加"市場總分點數"
plot3(GetField("分公司買進家數"),"買進家數",checkbox:=0,axis:=1,ScaleLabel:=slfull,ScaleDecimal:=sd0);//單位：家，可勾選畫圖選項 (參數設定) 
plot4(GetField("分公司賣出家數"),"賣出家數",checkbox:=0,axis:=1,ScaleLabel:=slfull,ScaleDecimal:=sd0);//單位：家，可勾選畫圖選項 (參數設定) 