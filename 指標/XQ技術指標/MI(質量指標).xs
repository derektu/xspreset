{@type:indicator}
// XQ: MI指標
//
input: Length(9, "天數一"), SumLength(25, "天數二");
variable: ema1(0), ema2(0), divSeries(0), mi(0);

ema1 = XAverage(High - Low, length);
ema2 = XAverage(ema1, length);

if ema2 <> 0 then
	divSeries = ema1 / ema2
else
	divSeries = 0;

if CurrentBar >= sumLength then
	mi = Summation(divSeries, sumLength)
else
	mi = 0;
	
Plot1(mi, "MI");

        
		