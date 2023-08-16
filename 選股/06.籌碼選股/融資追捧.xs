{@type:filter}
input: Length(10, "近期天數");
input: UpRatio(3.5, "上漲幅度(%)");

settotalbar(3);

if RateOfChange(Close, 1) >= UpRatio and
	Getfield("融資餘額張數") > 0 and
	Getfield("融資餘額張數") = highest(Getfield("融資餘額張數"), Length)  
then ret=1;

OutputField1(Getfield("融資餘額張數"), "融資餘額張數");
