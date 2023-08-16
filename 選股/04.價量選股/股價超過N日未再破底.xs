{@type:filter}
input:period(30, "計算期間");
input:day(10, "未破底天數");
value1=lowestbar(low,period);
if value1>day
then ret=1;