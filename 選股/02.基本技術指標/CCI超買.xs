{@type:filter}
// CCI超買
//
Input: Length(14, "期數"), AvgLength(9, "平滑期數"), OverBought(100, "超買值");
Variable: cciValue(0), cciMAValue(0);

SetTotalBar(maxlist(AvgLength + Length + 1,6) + 3);

cciValue = CommodityChannel(Length);
cciMAValue = Average(cciValue, AvgLength);

Condition1 = cciMAValue Crosses Over OverBought;
If condition1 then ret = 1;

OutputField1(cciValue, "CCI");
