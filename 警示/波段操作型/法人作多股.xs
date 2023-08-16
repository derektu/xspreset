{@type:sensor}
input: ForceType(1, "類型", inputKind:=Dict(["外資", 1], ["投信", 2], ["自營商", 3]));
input: Atleast(1000, "最少買超張數");
input:TXT("須逐筆洗價", "使用限制:日線");

settotalbar(3);

if barfreq <> "D" then return;

variable: ForcePush(0);
Switch ( ForceType ) 
Begin 
Case 1: ForcePush =Getfield("外資買賣超")[1];
Case 2: ForcePush =Getfield("投信買賣超")[1];
Case 3: ForcePush =Getfield("自營商買賣超")[1]; 
End; 

if  volume > volume[1] then 
begin
      condition1 = ( close[1]-open[1]  > 0.75 *high[1]-low[1] )  and //長紅棒
                   (high[1] -low[1]) > 2 *( high[2]-low[2]);      

      if condition1 and q_Ask > highest(high[1],3) and ForcePush >Atleast then ret=1;
end;

