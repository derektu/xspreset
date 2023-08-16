{@type:filter}
input:PriceLimit(5, "最小股價"), Length(5, "均量天期"), VolumeLimit(500, "最小均量");

SetTotalBar(3);

Value1 = Average(volume,Length);
if close > PriceLimit and Value1 > VolumeLimit Then
ret = 1;

