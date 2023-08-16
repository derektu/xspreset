{@type:filter}
input: miniratio(10, "投信買進佔今日總量%");
input: lv(5000, "投信持股張數上限");
input: holdratio(10, "投信持股比例上限%");

SetTotalBar(3);

value1=GetField("投信買張");			//投信買張
value2=GetField("投信持股");			//投信持股
value3=GetField("投信持股比例");		//投信持股比例 

if  
   value1 > volume * miniratio*0.01 and //買進張數/成交量 >= minratio
   value2 < lv and 						//原來庫存低
   value3 < holdratio and 				//原來庫存低
   GetField("公司類別","M") = "小型股" 	//小型股
then ret=1;

OutputField1(value1, "投信買張");
