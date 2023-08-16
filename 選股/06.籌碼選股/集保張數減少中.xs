{@type:filter}
input: n(3, "計算期間(週)");
input: Amount(1000, "減少張數(張)");

SetTotalBar(3);

// 單位=萬張
Value1 = (GetField("集保張數","W")[n] - GetField("集保張數","W")) * 10000;
if Value1 > Amount then
ret = 1;

OutputField1(Value1, "減少張數(張)");

 