{@type:indicator}
// XQ: VRC指標
//
Input: Length(12, "天數");
Variable: _vrc(0);

if volume[Length] <> 0 then
	_vrc = 100 * (volume - volume[Length])/volume[Length]
else
	_vrc = 50;

Plot1(_vrc, "VRC");
		