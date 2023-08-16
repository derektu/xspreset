{@type:sensor}
// 布林通道超買訊號
//
Input: Length(20, "期數"), UpperBand(2, "通道上緣");

settotalbar(Length + 3);

Ret = High >= bollingerband(Close, Length, UpperBand);



