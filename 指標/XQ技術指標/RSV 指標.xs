{@type:indicator}
// XQ: RSV指標
//
input: Length(9, "天數");
variable: RSVt(3), Kt(3), rsv(0), k(0), _d(0);

Stochastic(Length, RSVt, Kt, rsv, k, _d);

Plot1(rsv, "RSV(%)");
		