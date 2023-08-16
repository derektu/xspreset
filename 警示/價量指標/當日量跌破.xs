{@type:sensor}
input:initialtime(090000, "起算時間HHmmss");
input:timeline(100000, "截止時間HHmmss");
settotalbar(50);
variable: intervalhighv(0);
variable: keyprice(0);

if date <> date[1] then  intervalhighv =0 ; 

if time >= initialtime and time <= timeline then
begin 
   intervalhighv = maxlist(volume,intervalhighv ); 
   keyprice =close;
end;

if volume > intervalhighv and time >timeline and
   close < keyprice  and close>=open then ret=1;  
	
	



        
        