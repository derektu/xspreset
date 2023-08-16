{@type:filter}
//說明：如果本週大戶散戶集保資料尚未更新，則會用上週資料代替本週。

input: offset(9999,"不用調整，相容用參數");
input: periods(3, "連續期別");
var:sameweek(0); 

setbarfreq("W");
settotalbar(3);

if getinfo("FilterMode") = 1 then  
	sameweek = 0 
else if 
	datediff(GetFielddate("收盤價","D"),GetFielddate("收盤價","W")) < 6 
then  sameweek = 1 else  sameweek = 0; 

condition1 = trueall(getfield("大戶持股比例", "W", param:=400)[sameweek] > getfield("大戶持股比例", "W", param:=400)[sameweek+1], periods);
condition2 = trueall(getfield("散戶持股比例", "W", param:=100)[sameweek] < getfield("散戶持股比例", "W", param:=100)[sameweek+1], periods);

ret= condition1 and condition2;

outputfield(1, getfield("大戶持股比例", "W", param:=400)[sameweek], 2, "大戶比例");
outputfield(2, getfield("散戶持股比例", "W", param:=100)[sameweek], 2, "散戶比例");