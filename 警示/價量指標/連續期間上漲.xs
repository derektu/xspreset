{@type:sensor}
input:Length(3, "連續上漲期數");
settotalbar(Length + 3);
If TrueAll(Close > Close[1],Length) then ret=1;


        
        