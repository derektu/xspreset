{@type:sensor}
{																						
[檔名:]	三黑鴨			[資料夾:]	酒田戰法	[適用方向]	空															
[說明:]	連三黑K棒																																								
}		
settotalbar(5);																											
{判斷狀況}								
	condition1=	( open - close ) > (high -low) * 0.75					;//狀況1:	當期黑K棒
	condition2=	( open[1] - close[1] ) > (high[1] -low[1]) * 0.75					;//狀況2:	前期黑K棒
	condition3=	( open[2] - close[2] ) > (high[2] -low[2]) * 0.75					;//狀況3:	前前期黑K棒
	condition4=	close < close[1] and close[1] < close[2]					;//狀況4:	連續下跌	
{結果判斷}		
IF		
		condition1
	and	condition2
	and	condition3
	and	condition4
THEN	RET=1;	