{@type:sensor}
input:Length(20, "計算期數");

settotalbar(Length + 3);

if close  < lowest(low[1],Length) then ret=1;