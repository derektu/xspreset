{@type:sensor}
input:Length(10, "近N週期數");
input:TXT("僅適用日線", "使用限制");

settotalbar((Length + 3)*5);

if barfreq <> "D" and barfreq <> "AD" then Return;

if close > highest(getfield("High","W")[1],Length)//近n週最高價
then ret=1;