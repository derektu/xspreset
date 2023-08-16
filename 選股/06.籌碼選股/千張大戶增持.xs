{@type:filter}
//說明：如果本週大戶散戶集保資料尚未更新，則會用上週資料代替本週。

input: offset(9999,"不用調整，相容用參數");
input: ratio(10, "增加比例%");
var:sameweek(0);

setbarfreq("W");
settotalbar(3);
 
if getinfo("FilterMode") = 1 then  
	sameweek = 0 
else if 
	datediff(GetFielddate("收盤價","D"),GetFielddate("收盤價","W")) < 6 
then  sameweek = 1 else  sameweek = 0; 

value1=GetField("大戶持股比例","W",param:=1000)[sameweek];
if value1 > (value1[1] * (1 + ratio/100)) then ret=1;

outputfield(1, value1, 2, "大戶比例");
outputfield(2, value1[1], 2, "大戶比例[1]");
