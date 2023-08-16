{@type:indicator}
condition999 = symbolexchange = "TW" or symbolexchange = "TE";//台股+興櫃
condition998 = condition999 = true and symboltype = 2;//個股+興櫃

if condition998 = false //個股+興櫃
	then raiseruntimeerror("不支援此商品");


if barfreq <> "D" and barfreq <> "AD" 
	then raiseruntimeerror("不支援此頻率");

plot1(Getfield("吉尼係數","D"),"吉尼係數",axis:=1,ScaleLabel:=slfull,ScaleDecimal:=sd2);
plot2(GetField("分公司交易家數"),"分公司交易家數",axis:=2,ScaleLabel:=slfull,ScaleDecimal:=sd0);//單位：家