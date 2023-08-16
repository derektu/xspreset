{@type:indicator}
// XQ 乖離率
//
input: Length1(5, "天數一"), Length2(10, "天數二"), Length3(20, "天數三");

Plot1(Bias(Length1), "BIAS1(%)");
Plot2(Bias(Length2), "BIAS2(%)");
Plot3(Bias(Length3), "BIAS3(%)");

		