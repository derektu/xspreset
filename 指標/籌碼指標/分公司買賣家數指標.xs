{@type:indicator}
if barfreq = "Tick" or barfreq = "Min"
	then raiseruntimeerror("不支援此頻率");

value1=GetField("分公司買進家數");
value2=GetField("分公司賣出家數");
value3=value2-value1;

plot1(value3,"家數差");
