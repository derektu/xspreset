{@type:sensor}
{																						
[檔名:]	空頭三星			[資料夾:]	酒田戰法	[適用方向]	空															
[說明:]	開高低收A型排列																																										
}																												
settotalbar(5);	
{判斷狀況}								
	condition1=	open[1] > open[2] and open[1] > open					;//狀況1:	開盤價A型
	condition2=	high[1] > high[2] and high[1] > high					;//狀況2:	最高價A型
	condition3=	low[1] > low[2] and low[1] > low					;//狀況3:	最低價A型
	condition4=	close[1] > close[2] and close[1] > close					;//狀況4:	收盤價A型
{結果判斷}		
IF		
		condition1
	and	condition2
	and	condition3
	and	condition4
THEN	RET=1;	