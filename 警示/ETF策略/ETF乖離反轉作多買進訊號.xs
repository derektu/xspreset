{@type:sensor}
input:Length(20, "計算期數");
input:Ratio(21, "乖離%");

variable:KPrice(0);
if close/average(close,Length)<= 1-Ratio/100 then KPrice = H;
if Close crosses over KPrice
then ret=1 ;
