{@type:sensor}
input: Price(close, "比較價別");
input: Length(20, "近期期數");

settotalbar(3);
setbarback(Length);

if  Price > highest(high[1] ,Length) and 
    volume > highest(volume[1],length) then ret=1;



