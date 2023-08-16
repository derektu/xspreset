{@type:indicator}
input:period1(22,"MA天期");
input:period2(10,"差異MA天期");

if barfreq = "Tick" or barfreq = "Min"
	then raiseruntimeerror("不支援此頻率");
	
value1=GetField("分公司交易家數");
value2=average(value1,period1);
value3=value1-value2;
value4=average(value3,period2);
plot1(value3,"分公司家數差");
plot2(value4,"家數差移動平均線");