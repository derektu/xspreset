{@type:filter}
input:r1(50, "帳上現金(單位:百萬元)");

settotalbar(3);

value1=GetField("現金及約當現金","Q");
if value1 < r1
then ret=1;

OutputField1(value1, "帳上現金(百萬)");
