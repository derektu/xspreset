{@type:indicator}
// XQ: MA-Osc
//
input: Length1(5, "天數一"), Length2(10, "天數二");

value1 = Average(close, Length1);
value2 = Average(close, Length2);
value3 = (value1 - value2);

Plot1(value3, "MA-Osc");
		