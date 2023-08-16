{@type:filter}
input:N(13, "期別"); 

SetTotalBar(3); 

if GetField("月營收", "M") <= Lowest(GetField("月營收", "M"),N) then ret=1; 

OutputField1(GetField("月營收", "M"), "月營收"); 
