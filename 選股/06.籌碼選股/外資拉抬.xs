{@type:filter}
input: Length(10, "計算天數");
input: UpRatio(3.5, "上漲幅度(%)");
input: VolumeRatio(5, "買超佔比例(%)");

variable: SumForce(0);
variable: SumTotalVolume(0);

settotalbar(3);

if RateOfChange(Close, 1) >= UpRatio then
begin
	SumTotalVolume = Summation(volume, Length);
	SumForce = Summation(GetField("外資買賣超"), Length);
	if SumForce > SumTotalVolume * VolumeRatio / 100 then ret =1;
end;

OutputField1(SumForce, "外資累計買超張數");
