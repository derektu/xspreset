{@type:sensor}
// CCI超買
//
Input: Length(14, "期數"), AvgLength(9, "平滑期數"), Overbought(100, "超買值");
Variable: cciValue(0), cciMAValue(0);

SetTotalBar(maxlist(AvgLength + Length + 1,6) + 11);

cciValue = CommodityChannel(Length);
cciMAValue = Average(cciValue, AvgLength);

Ret = cciMAValue Crosses Above OverBought;



