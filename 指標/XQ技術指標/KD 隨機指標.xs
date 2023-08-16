{@type:indicator}
// XQ: KD指標
//
input: Length(9, "天數"), RSVt(3, "RSVt權數"), Kt(3, "Kt權數");
variable: rsv(0), k(0), _d(0);

Stochastic(Length, RSVt, Kt, rsv, k, _d);

Plot1(k, "K(%)");
Plot2(_d, "D(%)");

	
	
		