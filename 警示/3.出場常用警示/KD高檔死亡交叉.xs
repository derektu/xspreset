{@type:sensor}
input: Length(9, "計算期數"), RSVt(3, "RSVt權數"), Kt(3, "Kt權數"), HighBound(75, "高檔區");

SetTotalBar(maxlist(Length,6) * 3 + 8);

variable: rsv(0), k(0), _d(0);

Stochastic(Length, RSVt, Kt, rsv, k, _d);

if k>HighBound and k crosses under _d
then ret=1;
