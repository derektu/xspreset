{@type:filter}
// KD指標, K值由下往上穿越D值
//
input: Length(9, "天數"), RSVt(3, "RSVt權數"), Kt(3, "Kt權數");
variable: rsv(0), k(0), _d(0);

SetTotalBar(maxlist(Length,6) * 3);

Stochastic(Length, RSVt, Kt, rsv, k, _d);

Ret = k crosses above _d;
