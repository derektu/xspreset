{@type:filter}
input:day(100, "計算區間");
input:percents(14, "距離區間最低點漲幅");

SetTotalBar(3);

value1 = lowest(close, day-1);
if high = highest(close, day-1) and value1 * (1 + percents/100) >= high
then ret=1;