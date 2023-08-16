{@type:sensor}
input: shortlength(5, "短期均線期數");
input: Longlength(20, "長期均線期數");

settotalbar(3);
setbarback(maxlist(shortlength,Longlength));

variable: Longaverage(0);
variable: shortaverage(0);

Longaverage = Average(close,Longlength);
shortaverage=Average(close,shortlength) ;


if close > maxlist(shortaverage, longaverage) and
     open < minlist(shortaverage, longaverage)
then ret=1;  


        
        