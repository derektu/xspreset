{@type:filter}
input:N(4, "期別");
 
SetTotalBar(3); 

if TrueAll(GetField("EPS","Q") < GetField("EPS","Q")[1],N) then ret=1; 

OutputField1(GetField("EPS","Q"), "EPS(元)(季)"); 
