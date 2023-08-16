{@type:indicator}
{統計台灣50成分股, 最低價創近20期新低的家數。}

if barfreq <> "Min" then raiseruntimeerror("僅支援「分鐘」頻率");

value1 = GetSymbolField("TSE50.SJ","TW50創新低家數");

plot1(value1,"台灣50創新低家數");