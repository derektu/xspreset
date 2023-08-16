{@type:sensor}
input:x1(300, "融資減少張");
input:x2(200, "融券增加張");
input:x3(10, "全計佔成交量比例%");
input: Type(1, "最新資料：0=今日、1=昨日");
input: TXT1("僅適用日線", "使用限制");
input: TXT2("盤中無當日資券資料", "建議使用單次洗價模式");

settotalbar(3);

value1=GetField("融資增減張數")[Type];//融資增減張數
value2=GetField("融券增減張數")[Type];//融券增減張數

 if value1 <-x1 and 
    value2 > x2 and 
    (value2-value1)/volume[Type]>x3/100
 then ret=1;