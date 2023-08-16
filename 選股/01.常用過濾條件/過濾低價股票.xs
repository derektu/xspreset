{@type:filter}
input:PriceLimit(5, "最小股價");

SetTotalBar(3);

Ret = close > PriceLimit;
