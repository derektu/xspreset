{@type:indicator}
// XQ: AR指標
// 
input: Length(26, "天數");
variable: sum(0), ar(0);

sum = Summation((Open - Low), Length);
if sum <> 0 then
	ar = 100 * Summation((High - Open), length) / sum
else
	ar = ar[1];

Plot1(ar, "AR(%)");

		