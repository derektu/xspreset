{@type:filter}
input:MinCapital(10, "最小股本(億)");
input:MaxCapital(50, "最大股本(億)"); 

SetTotalBar(3);

Value1 = GetField("最新股本");

// 介於兩者之間
Ret = Value1 >= MinCapital and Value1 <= MaxCapital;


