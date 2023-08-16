{@type:sensor}
input: lastvolume1(2000, "漲停期間放量張數");
input: lastvolume2(10000, "當日總成交量上限");
input:TXT1("需使用逐筆洗價", "使用限制");

settotalbar(3);

variable: UPLVol(0);

if Date <> Date[1] then UPLVol = 0;

if Close =GetField("漲停價", "D") then 
begin
  UPLVol += GetField("Volume", "Tick");
  if q_BestBidSize1 <lastvolume1 and 
     GetField("Volume", "D") >lastvolume2 and
	 UPLVol > lastvolume1 
  then RET=1;
end;
