{@type:indicator}
input: Length(5, "計算天數");

if barfreq = "Min"
	then raiseruntimeerror("僅適用日線以上");
	
variable: _buyTotal(0), volTotal(0);

_buyTotal = summation(GetField("外資買張") + GetField("外資賣張"), Length);
volTotal = summation(Volume * 2, Length);

Plot1(_buyTotal, "換手張數");
Plot2(_buyTotal * 100 / volTotal, "比例%");
	


