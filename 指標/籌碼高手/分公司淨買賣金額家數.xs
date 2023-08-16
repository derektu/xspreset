{@type:indicator}
condition999 = symbolexchange = "TW" or symbolexchange = "TE";//台股+興櫃
condition997 = condition999 and (symboltype = 2 or symboltype = 4 or symbolType = 1);//個股+權證+興櫃+類股

if condition997 = false //個股+權證+興櫃+類股
	then raiseruntimeerror("不支援此商品");


if barfreq <> "D" and barfreq <> "AD" 
	then raiseruntimeerror("不支援此頻率");

plot1(GetField("分公司淨賣超金額家數")-GetField("分公司淨買超金額家數"),"分公司淨買賣超金額家數差",checkbox:=1,axis:=2,ScaleLabel:=slfull,ScaleDecimal:=sd0);//單位：家
plot2(GetField("分公司淨買超金額家數"),"分公司淨買超金額家數",checkbox:=0,axis:=1,ScaleLabel:=slfull,ScaleDecimal:=sd0);//單位：家，可勾選畫圖選項 (參數設定) 
plot3(GetField("分公司淨賣超金額家數"),"分公司淨賣超金額家數",checkbox:=0,axis:=1,ScaleLabel:=slfull,ScaleDecimal:=sd0);//單位：家，可勾選畫圖選項 (參數設定) 