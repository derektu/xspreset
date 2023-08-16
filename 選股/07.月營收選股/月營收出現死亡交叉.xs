{@type:filter}
input:shortterm(4, "短期均線");
input:longterm(12, "長期均線");

if average(GetField("月營收","M"),shortterm)*1.1
< average(GetField("月營收","M"),longterm)
then ret=1;
