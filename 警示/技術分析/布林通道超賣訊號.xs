{@type:sensor}
// 布林通道超賣訊號
//
Input: Length(20, "期數"), LowerBand(2, "通道下緣");

settotalbar(Length + 3);

Ret = Low <= bollingerband(Close, Length, -1 * LowerBand);



        