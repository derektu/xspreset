{@type:sensor}
input:Length(20, "尋找高點期數");
input:percent(7, "自高點回檔幅度%");

settotalbar(Length + 3);

if close < highest(high,Length)*(1- percent/100) then Ret=1;