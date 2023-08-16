{@type:sensor}
input:Length(4, "比較N天前融資張數");
input:DVOL(3000, "比N天前融資減少張數");
input:TXT1("僅適用日線", "使用限制");
input:TXT2("建議使用逐筆洗價", "盤中使用說明");

settotalbar(3);
setbarback(Length);

if barfreq = "D" and 
   Close > Close[1] and 
   Close[Length] > Close * 1.1 and
   GetField("融資餘額張數")[Length] - GetField("融資餘額張數")[1] > DVOL 
then ret=1;
