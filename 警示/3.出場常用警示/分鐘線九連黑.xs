{@type:sensor}
Input: Length(9, "連續筆數");

settotalbar(Length + 3);

if Barfreq ="Min" then 
   if trueall(close < open,Length) then ret=1;
