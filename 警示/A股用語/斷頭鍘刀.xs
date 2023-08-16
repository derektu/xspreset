{@type:sensor}
input:ShortLength(5, "短期均線期數");
input:MidLength(20, "中期均線期數");
input:LongLength(60, "長期均線期數");

settotalbar(8);
setbarback(maxlist(ShortLength,MidLength,LongLength));

value1=average(close,ShortLength);
value2=average(close,MidLength);
value3=average(close,LongLength);

if close crosses below value1 and 
   close crosses below value2 and 
   close crosses below value3 
then ret=1;
 