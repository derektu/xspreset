{@type:indicator}
// XQ: MAM指標
//
Input: Length(10, "天數一"), Distance(10, "天數二");
Variable: mam(0);

Value1 = Average(Close, Length);
Value2 = Average(Close, Length)[Distance];

mam = Value1 - Value2;
	
Plot1(mam, "MAM");
		