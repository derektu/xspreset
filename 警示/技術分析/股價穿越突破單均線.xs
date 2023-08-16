{@type:sensor}
input: length(5, "均線期數");
input: Price(Close, "價格別");

settotalbar(3);
setbarback(length);

variable: avgValue(0);
avgValue = Average(Price,length);

if close > avgValue and  open < avgValue  then ret=1;  



        