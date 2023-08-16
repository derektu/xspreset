{@type:sensor}
input: shortlength(5, "短期均線期數");
input: midlength(10, "中期均線期數");
input: Longlength(20, "長期均線期數");

variable: shortaverage(0);
variable: midaverage(0);
variable: Longaverage(0);

settotalbar(3);
setbarback(maxlist(shortlength,midlength,Longlength));

shortaverage=Average(close,shortlength);
midaverage=Average(close,midlength) ;
Longaverage = Average(close,Longlength); 

if open > maxlist(shortaverage, midaverage, longaverage) and
   close < minlist(shortaverage, midaverage, longaverage)
then ret=1;        