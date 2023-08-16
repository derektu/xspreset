{@type:indicator}
{ 一般適用於大盤月線資料 }

input:length1(14, "天期一");
input:length2(11, "天期二");
input:length3(10, "平均天期");

variable:coppock(0); 
Value1=rateofchange(close,length1);   
Value2=rateofchange(close,length2);   
coppock=xaverage(Value1+Value2,length3);   

plot1(coppock,"Coppock Indicator");
