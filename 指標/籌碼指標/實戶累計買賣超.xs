{@type:indicator}
input: Length(5, "計算天數");

if barfreq = "Min"
	then raiseruntimeerror("僅適用日線以上");
	
variable: _buyTotal(0), volTotal(0);

_buyTotal = summation(GetField("實戶買賣超張數"), Length);
volTotal = summation(Volume, Length);

Plot1(_buyTotal, "累計買賣超");
Plot2(_buyTotal * 100 / volTotal, "比例%");
