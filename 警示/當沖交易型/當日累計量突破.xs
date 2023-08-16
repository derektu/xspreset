{@type:sensor}
input:VolumeThre(1000, "突破量門檻");
input:AmountThre(1000, "突破成交值金額門檻(萬)");
settotalbar(3);
if GetField("Volume", "D") > VolumeThre or GetField("均價")*GetField("Volume", "D")/10 > AmountThre then ret=1;
