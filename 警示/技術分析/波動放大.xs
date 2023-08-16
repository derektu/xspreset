{@type:sensor}
// 波動放大
//
input: Length(20, "期數"), Percent(7, "波動幅度%");

settotalbar(3);
setbarback(Length);

Ret = Highest(High, Length) / Lowest(Low, Length) -1 > Percent*0.01;



        