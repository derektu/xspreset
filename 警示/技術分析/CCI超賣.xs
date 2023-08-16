{@type:sensor}
// CCI超賣
//
Input: Length(14, "期數"), AvgLength(9, "平滑期數"), OverSold(-100, "超賣值");
Variable: cciValue(0), cciMAValue(0);

SetTotalBar(maxlist(AvgLength + Length + 1,6) + 11);

cciValue = CommodityChannel(Length);
cciMAValue = Average(cciValue, AvgLength);

Ret = cciMAValue Crosses Below OverSold;



        