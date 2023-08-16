{@type:sensor}
input: length(20, "均量期數");
input: VolumeXtime(3, "量增倍數");

settotalbar(3);
setbarback(Length);

if volume > Average( volume[1],length)* VolumeXtime then ret=1;



