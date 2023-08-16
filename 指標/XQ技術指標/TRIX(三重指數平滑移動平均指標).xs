{@type:indicator}
// XQ: TRIX指標
//
input: Length1(9, "天數一"), Length2(15, "天數二");

Value1 = TRIX(Close, Length1) * 100;
Value2 = TRIX(Close, Length2) * 100;

Plot1(Value1, "TRIX1");
Plot2(Value2, "TRIX2");
		