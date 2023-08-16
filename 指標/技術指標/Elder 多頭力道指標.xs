{@type:indicator}
// Elder 多頭力道指標
//
input: Length(13, "天數");

Value1 = High - XAverage(Close, Length);

Plot1(Value1, "多頭");

        
		