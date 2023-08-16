{@type:sensor}
Input: pastDays(5, "計算天數");
Input: _buyAmount(1000, "買超張數");
input:TXT("僅適用日線", "使用限制");

variable: SumForce(0);

settotalbar(pastdays + 3);

if BarFreq <> "D" then return;

if close < lowest(low[1], pastdays) then
begin
	sumForce = Summation(GetField("投信買賣超")[1], pastDays);
	if sumForce > _buyAmount then ret=1;

end;        