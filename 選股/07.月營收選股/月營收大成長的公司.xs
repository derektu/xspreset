{@type:filter}
input:lowlimit(20, "成長百分比");//單位:%

value1=GetField("月營收","M");//億
value2=GetField("營業利益率","Q");
value3=value1*12*value2/100;
value4=GetField("最新股本");//億
variable:FEPS(0);
FEPS=value3/value4*10;
outputfield1(FEPS, "用月營收預估的本業EPS");
if feps<>0
then value5=close/feps;
outputfield2(value5, "用月營收預估的本益比");
if value5<12 and value5>0
then condition1=true;

value6=GetField("月營收月增率","M");
value7=GetField("月營收年增率","M");

if value6>=lowlimit
and value7>=lowlimit
and value6[1]>0
then condition2=true;

if condition1 and condition2
then ret=1;
