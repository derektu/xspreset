{@type:indicator}
//總股東人數

condition999 = symbolexchange = "TW" or symbolexchange = "TE";//台股+興櫃
condition998 = condition999 = true and (symboltype = 2 or symbolType = 1);//個股+興櫃+類股

if condition998 = false //個股+興櫃+類股
	then raiseruntimeerror("不支援此商品");

if barfreq = "Tick" or barfreq = "Min"
	then raiseruntimeerror("不支援此頻率");

if barFreq = "D" then
	value1 = GetField("總持股人數","W")
else
	value1 = GetField("總持股人數");

plot1(value1,"總持股人數");