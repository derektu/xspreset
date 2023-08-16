{@type:indicator}
// XQ: PVC指標
//
Input: Length(10, "天數");
Variable: _pvc(0);

value1 = Average(Volume, Length);
if value1 <> 0 then
	_pvc = 100 * (Volume - value1) / value1
else
	_pvc = 0;

Plot1(_pvc, "PVC");
		