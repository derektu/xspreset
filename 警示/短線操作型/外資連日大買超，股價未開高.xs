{@type:sensor}
input:Periods(3, "外資連續買超天數");
input:Atleast(10000, "每日買超金額(萬元)");
input:Gap(1, "開盤幅度%");
input:TXT1("僅適用日線", "使用限制");
input:TXT2("需逐筆洗價", "使用說明:選日內單次觸發");

settotalbar(3);
setbarback(Periods);

if BarFreq = "D" and
   Trueall( Getfield("外資買賣超")[1]*Close*0.1 > Atleast ,Periods)  and
   GetField("Open", "D") < GetField("RefPrice", "D") *(1+Gap/100)
then ret=1;
