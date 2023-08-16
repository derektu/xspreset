{@type:sensor}
input: Atleast(1000, "外資買超張數");
input: Gap(2, "平盤幅度%");
input:TXT1("僅適用日線", "使用限制");
input:TXT2("需逐筆洗價", "使用說明:選日內單次觸發");

settotalbar(3);

if BarFreq = "D" and  Getfield("外資買賣超")[1] > Atleast and
   GetField("Open", "D") < GetField("RefPrice", "D") *(1+Gap/100) and
   GetField("Open", "D") > GetField("RefPrice", "D") 
then ret=1;

