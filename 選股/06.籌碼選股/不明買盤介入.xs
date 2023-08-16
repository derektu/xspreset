{@type:filter}
input:period(5, "均線期間");
input:ratio(30, "不明買盤比重%");

settotalbar(period + 7);

value1=GetField("法人買張","D");
value2=GetField("資券互抵張數","D");
value3=GetField("散戶買張","D");
value4=volume - value1 - value2 - value3;
value5=value4*100/volume;	// 不明買盤的比重
value6=average(value5,period);

if value6 crosses over ratio
then ret=1;

OutputField1(value5, "不明買盤比重(%)");
