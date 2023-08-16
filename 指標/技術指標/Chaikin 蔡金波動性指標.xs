{@type:indicator}
// Chaikin Volatility 指標
//
input: Length(10, "天數一"), LengthROC(12, "天數二");
variable: _chaikin(0);

Value1 = XAverage(High - Low, Length);

if CurrentBar >= LengthROC And Value1[LengthROC] <> 0 then
	_chaikin = 100 * (Value1 - Value1[LengthROC]) / Value1[LengthROC]
else
	_chaikin = 0;
	
Plot1(_chaikin, "Chaikin");

		