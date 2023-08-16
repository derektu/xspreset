{@type:filter}
input: r1(5, "接近低點幅度(%)");
setbarfreq("M");

if barfreq <> "M" then raiseruntimeerror("頻率錯誤");

settotalbar(3);

value1=GetField("總市值","M");
value2=nthlowest(1,GetField("總市值","M"),48);
value3=nthlowest(1,GetField("總市值","M"),24);

if absvalue(value2-value3)*100 / value3 < r1
then 
  begin
	if (value1-value2) * 100 / value2 < r1 and
	   (value1-value3) * 100 / value3 < r1 
	then
		ret=1;
  end;
	
OutputField1(value1, "最近市值(億)");
