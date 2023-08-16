{@type:indicator}
// XQ: 心理線
//
input: Length1(12, "天數一"), Length2(24, "天數二");

Value1 = 100 * CountIf(Close > Close[1], Length1) / Length1;
Value2 = 100 * CountIf(Close > Close[1], Length2) / Length2;

Plot1(Value1, "PSY1");
Plot2(Value2, "PSY2");


        
		