{@type:filter}
setbarfreq("AD");

input: shortlength(5, "短期均線期數");
input: midlength(10, "中期均線期數");
input: Longlength(20, "長期均線期數");
input: Percent(5, "均線糾結區間%");
input: XLen(20, "均線糾結期數");
input: Volpercent(25, "放量幅度%");//帶量突破的量是超過最長期的均量多少%
variable: shortaverage(0);
variable: midaverage(0);
variable: Longaverage(0);
variable: AvgHLp(0),AvgH(0),AvgL(0);

shortaverage = average(close,shortlength);
midaverage = average(close,midlength);
Longaverage = average(close,Longlength);
		
AvgH = maxlist(shortaverage,midaverage,Longaverage);
AvgL = minlist(shortaverage,midaverage,Longaverage);

if AvgL > 0 then AvgHLp = 100*AvgH/AvgL -100;

condition1 = trueAll(AvgHLp < Percent,XLen);
condition2 = V > average(V[1],XLen)*(1+Volpercent/100) ;
condition3 = C > AvgH *(1.02) and H > highest(H[1],XLen);
condition4 = average(volume[1], 5) >= 1000; 

ret = condition1 and condition2 and condition3 and condition4;

outputfield(1,AvgH,2,"均線上緣", order := -1);
outputfield(2,AvgL,2,"均線下緣");


