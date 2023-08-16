{@type:indicator}
// XQ: MO指標
//
input: Length(10, "天數");
variable: mo(0);

mo = 100 * Close / Close[Length];

Plot1(mo, "MO");
		