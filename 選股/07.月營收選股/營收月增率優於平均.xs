{@type:filter}
value1=GetField("月營收月增率","M");
value2=average(value1,36);
if value1>10
and value1>value2*1.3
then ret=1;