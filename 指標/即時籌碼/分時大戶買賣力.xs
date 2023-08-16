{@type:indicator}
{指標數值定義："大戶單=特大單+大單資料為分鐘統計張數"

支援商品：台(股票)}

if barfreq <> "Min" and barfreq <> "D" and barfreq <> "AD" then 
	raiseruntimeerror("僅支援分鐘與日頻率（含還原）");

value1 = GetField("賣出特大單量") + GetField("賣出大單量");
value2 = GetField("買進特大單量") + GetField("買進大單量");
value3 = value2 - value1;
plot1(value3,"大戶買賣力");
plot2(value2,"大戶外盤量",checkbox:=0);
plot3(value1,"大戶內盤量",checkbox:=0);