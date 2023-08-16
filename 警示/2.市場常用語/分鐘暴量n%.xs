{@type:sensor}
input:percent(100, "量增比例%");
input:Length(200, "均量期數");
input:XLimit(True, "限制最低觸發門檻");
input:atVolume(500, "最低觸發張數");
input:TXT("建議使用分鐘線", "使用說明");

variable: AvgVolume(0);

settotalbar(Length + 3);

AvgVolume=Average(volume,Length);
if XLimit then 
begin
  if Volume > atVolume  and  volume > AvgVolume *(1+ percent/100)  then ret=1;
end
else
begin
  if Volume > Volume[1]  and  volume > AvgVolume *(1+ percent/100)  then ret=1;
end;
