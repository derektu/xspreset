{@type:filter}
//說明：如果本週大戶散戶集保資料尚未更新，則會用上週資料代替本週。

var:sameweek(0); 

setbarfreq("W");
settotalbar(3);

if getinfo("FilterMode") = 1 then  
	sameweek = 0 
else if 
	datediff(GetFielddate("收盤價","D"),GetFielddate("收盤價","W")) < 6 
then  sameweek = 1 else  sameweek = 0; 

value1=GetField("大戶持股人數","W",param:=1000)[sameweek];
value2=GetField("散戶持股人數","W",param:=400)[sameweek];

if value1<value1[1]
and value2>value2[1]
then ret=1;

outputfield(1,value1,0,"本週大戶人數");
outputfield(2,value1[1],0,"上週大戶人數");
outputfield(3,value1-value1[1],0,"大戶減少數");
outputfield(4,value2,0,"本週散戶人數");
outputfield(5,value2[1],0,"上週散戶人數");
outputfield(6,value2-value2[1],0,"散戶增加數");
