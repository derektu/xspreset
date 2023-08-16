{@type:indicator}
// XQ: KDJ指標
//
input: Length(9, "天數"), RSVt(3, "RSVt權數"), Kt(3, "Kt權數"), JType(0, "J類型", inputKind:=Dict(["3K-2D", 0], ["3D-2K", 1]));
variable: rsv(0), k(0), _d(0), j(0);

Stochastic(Length, RSVt, Kt, rsv, k, _d);

Plot1(k, "K(%)");
Plot2(_d, "D(%)");

if JType = 0 then
	j = 3 * k - 2 * _d
else
	j = 3 * _d - 2 * k;

Plot3(j, "J(%)");
	
		