{@type:sensor}
input: FastLength(12, "DIF短期期數"), SlowLength(26, "DIF長期期數"), MACDLength(9, "MACD天數");

SetTotalBar((maxlist(FastLength,SlowLength,6) + MACDLength) * 3 + 8);

variable: difValue(0), macdValue(0), oscValue(0);

MACD(weightedclose(), FastLength, SlowLength, MACDLength, difValue, macdValue, oscValue);

Ret = oscValue Crosses Below 0;
