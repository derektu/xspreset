{@type:sensor}
input: ForceType(1, "類型", inputKind:=Dict(["合計", 0], ["外資", 1], ["投信", 2], ["自營商", 3]));
input: Periods(20, "計算期間");
input: Percent(5, "持股減少幅度%");
input: Type(1, "使用資料：0=今日、1=昨日");
input: TXT("僅適用日線逐筆洗價", "盤中使用限制");
input: TXT2("盤中無當日即時法人買賣資料", "建議使用單次洗價模式");
variable: ForcePush(0);

settotalbar(Periods + 3);

if BarFreq <> "D" or absvalue(Type) > 1 then return;

    Switch ( ForceType ) 
    Begin 
        Case 1: 
            ForcePush = Getfield("外資持股")[Type];
        Case 2: 
            ForcePush = Getfield("投信持股")[Type]; 
        Case 3: 
            ForcePush = Getfield("自營商持股")[Type]; 
        default: 
            ForcePush = Getfield("外資持股")[Type]+Getfield("投信持股")[Type]+Getfield("自營商持股")[Type];
    End; 

if currentbar <= Periods then return;

if Close < Close[1] and
   ForcePush[Type] < ForcePush[Periods+Type] * (1 - Percent * 0.01) 
then 
   ret = 1;

