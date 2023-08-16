{@type:indicator}
condition999 = symbolexchange = "TW" or symbolexchange = "TE";//台股+興櫃
condition992 = condition999 and  (symbol <> "TSE.TW" and symbol <> "TWSE.FS" and symbol <> "OTC.TW");//類股+個股+權證+興櫃

if condition992 = false //類股+個股+權證+興櫃
	then raiseruntimeerror("不支援此商品");



if barfreq <> "D" and barfreq <> "AD" 
	then raiseruntimeerror("不支援此頻率");
	

{
plot1(GetField("分公司淨賣超金額家數") - GetField("分公司淨買超金額家數"),"買賣家數差",checkbox:=1,axis:=2,ScaleLabel:=slfull,ScaleDecimal:=sd0);//單位：家
plot2(GetField("分公司淨買超金額家數"),"買進",checkbox:=0,axis:=1,ScaleLabel:=slfull,ScaleDecimal:=sd0);//單位：家，可勾選畫圖選項 (參數設定) 
plot3(GetField("分公司淨賣超金額家數"),"賣出",checkbox:=0,axis:=1,ScaleLabel:=slfull,ScaleDecimal:=sd0);//單位：家，可勾選畫圖選項 (參數設定) 

plot1(GetField("買家數")-GetField("賣家數"),"買賣家數差",checkbox:=1,axis:=2);//單位：家
plot2(GetField("買家數"),"買進",checkbox:=0,axis:=1);//單位：家，可勾選畫圖選項 (參數設定) 
plot3(GetField("賣家數"),"賣出",checkbox:=0,axis:=1);//單位：家，可勾選畫圖選項 (參數設定) 
}

//	20180730 針對以下Mail與Alex、雅慧姐進行討論，決定更改為分公司買進/賣出家數來計算；並將指標名稱改成“分公司買進賣出”。
//	Mail Re: Fw: 有關買賣家數問題
//	Mon, 30 Jul 2018 13:18:30		
plot1(GetField("分公司賣出家數")-GetField("分公司買進家數"),"買賣家數差",checkbox:=1,axis:=2);//單位：家
plot2(GetField("分公司買進家數"),"買進",checkbox:=0,axis:=1);//單位：家，可勾選畫圖選項 (參數設定) 
plot3(GetField("分公司賣出家數"),"賣出",checkbox:=0,axis:=1);//單位：家，可勾選畫圖選項 (參數設定) 