{@type:indicator}
// XQ: BBandWidth指標
//
input: Length(20, "天數"), UpperBand(2, "上"), LowerBand(2, "下"), EMALength(3, "EMA");
variable: up(0), down(0), mid(0), bbandwidth(0), ema(0);

up = bollingerband(Close, Length, UpperBand);
down = bollingerband(Close, Length, -1 * LowerBand);
mid = (up + down) / 2;

bbandwidth = 100 * (up - down) / mid;
ema = XAverage(bbandwidth, EMALength);

Plot1(bbandwidth , "BBand width(%)");
Plot2(ema, "Band% EMA");



        
		