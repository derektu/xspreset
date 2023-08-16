{@type:function}
SetBarMode(1);

// Bias function (for 乖離率相關指標)
//
input: length(numericsimple);

value1 = Average(close, length);
Bias = (close - value1) * 100 / value1;

