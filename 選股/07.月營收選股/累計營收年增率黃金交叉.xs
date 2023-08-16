{@type:filter}
input: r1(3, "短天期"), r2(12, "長天期");
value1=GetField("累計營收年增率","M");
if average(value1,r1) crosses over average(value1,r2)+5
and value1>10
then ret=1;
