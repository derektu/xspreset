{@type:filter}
input:period(100, "計算天數");
value1=LOWEST(LOW,period);

if LOW=value1 
then ret=1; 