{@type:sensor}
input: pastDays(3, "計算天數");
input: _BuyRatio(25, "買超佔比例(%)");
input:TXT("僅適用日線", "使用限制");

variable: SumForce(0);
variable: SumTotalVolume(0);

settotalbar(pastDays + 3);

if BarFreq <> "D" then return;

if Close > High[1] then
begin
	SumForce = Summation(GetField("投信買賣超")[1], pastDays);
	sumTotalVolume = Summation(Volume[1], pastDays);

	if SumForce > SumTotalVolume * _BuyRatio/100 then ret =1;

end;

        