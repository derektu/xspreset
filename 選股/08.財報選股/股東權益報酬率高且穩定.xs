{@type:filter}
input:years(5, "評估期間(年)");
input:r1(15, "ROE下限(%)");
input:r2(3, "ROE最大差異(%)");

SetBarFreq("Y");

settotalbar(3);

value1=GetField("股東權益報酬率","Y");

value2=lowest(GetField("股東權益報酬率","Y"), years);
value3=highest(GetField("股東權益報酬率","Y"), years);

if (value3 - value2) < r2 and value2 > r1 
then ret=1;

outputfield1(value1, "ROE(%)");


