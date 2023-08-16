{@type:sensor}
//沿著均線前進
input:Length(10, "計算期數");
input:FollowLength(5, "貼近均線期數");
input:Ratio(2, "沿均線通道幅度%");
input:LongShort(0, "觸發", inputKind:=Dict(["創新高", 1], ["創新低", -1], ["不指定", 0]));

settotalbar(FollowLength + 3);
setbarback(Length);

condition1= false;

switch(LongShort)
begin
case =1:
 condition1 = close > highest(high[1],Length);
case -1:
 condition1 = close < lowest(low[1],Length);
case 0:
 condition1=true;
end;


If Condition1 and 
   TrueAll(absvalue(close-average(close,Length))< Close*Ratio/100,FollowLength)
then Ret=1;