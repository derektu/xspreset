{@type:sensor}
// MTM往上穿越0軸
//
Input: Length(10, "期數");

settotalbar(maxlist(Length,6) + 8);

Ret = Momentum(Close, Length) Crosses Above 0;
   

   
        