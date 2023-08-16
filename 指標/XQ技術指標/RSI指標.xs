{@type:indicator}
// XQ: RSI指標
//
input: Length1(6, "天數一"), Length2(12, "天數二");

Plot1(RSI(Close, Length1), "RSI1");
Plot2(RSI(Close, Length2), "RSI2");

        
		