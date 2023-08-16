{@type:filter}
Input: X(10, "本益比(倍)");

settotalbar(3);

Value1 = GetField("本益比", "D");
if Value1 < X then Ret = 1;

outputfield1(Value1, "本益比(倍)");


