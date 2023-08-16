{@type:filter}
// ADX趨勢成形
//
input: Length(14, "期數"), Threshold(25, "穿越值");

variable: pdi_value(0), ndi_value(0), adx_value(0);

SetTotalBar(Length*11);

DirectionMovement(Length, pdi_value, ndi_value, adx_value);

if adx_value Crosses Above Threshold and close=high
then ret=1;