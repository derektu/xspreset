{@type:indicator}
{統計台灣50成分股內, 目前這根K棒是紅K棒的家數.
紅K棒的定義為，收盤價大於開盤價。}

if barfreq <> "Min" then raiseruntimeerror("僅支援「分鐘」頻率");

value1 = GetSymbolField("TSE50.SJ","TW50紅K家數");

plot1(value1,"台灣50紅K家數");