{@type:filter}
input:r1(10, "PB距離N個月來低點只剩N%");
input:r2(60, "N個月以來");
setbarfreq("M");

if barfreq <> "M" then raiseruntimeerror("頻率錯誤");

settotalbar(3);

value1=GetField("股價淨值比","M");
value2=lowest(GetField("股價淨值比","M"),r2);
value3=average(GetField("股價淨值比","M"),r2);

if value1 < value3 and value1 < value2*(1+r1/100)
then ret=1;

outputfield1(value1, "股價淨值比");
