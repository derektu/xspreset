{@type:indicator}
// XQ: 快速KD指標
//
input: Length(9, "天數"), RSVt(3, "RSVt權數");
variable: rsv(0), k(0), _d(0);

Stochastic(Length, RSVt, 3, rsv, k, _d);

Plot1(rsv, "K(%)");
Plot2(k, "D(%)");
		