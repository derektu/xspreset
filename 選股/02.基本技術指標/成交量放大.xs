{@type:filter}
input: Length(5, "均量區間"), VolFactor(2, "放大倍數");

settotalbar(3);

Ret = Volume > Average(Volume[1], Length) * VolFactor;
