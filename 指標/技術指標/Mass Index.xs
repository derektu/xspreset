{@type:indicator}
input: length1(9, "天期一");
input: length2(25, "天期二");
  
value1 = average(range,length1);   
value2 = average(value1,length1);   
if value2 = 0 then value3 = 0 else value3 = value1/value2;
value4 = summation(value3,length2); 

plot1(value4,"Mass Index");    
