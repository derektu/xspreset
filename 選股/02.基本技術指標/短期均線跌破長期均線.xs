{@type:filter}
input: Shortlength(5, "短期均線期數");
input: Longlength(20, "長期均線期數");

settotalbar(3);

If Average(Close,Shortlength) crosses under Average(Close,Longlength) then Ret=1;



