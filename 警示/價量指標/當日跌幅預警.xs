{@type:sensor}
input:AlertChangeRatio(3, "預警幅度%");
settotalbar(3);
If q_PriceChangeRatio < AlertChangeRatio*-1 Then ret = 1;
        
        