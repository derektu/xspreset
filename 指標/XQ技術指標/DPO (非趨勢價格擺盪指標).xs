{@type:indicator}
// XQ: DPO指標
//
input: Length(10, "天數");
variable: dpo(0);

dpo = Close - Average(Close, Length)[(Length /2) + 1];

Plot1(dpo, "DPO"); 
        
		