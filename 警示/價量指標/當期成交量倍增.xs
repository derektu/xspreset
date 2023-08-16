{@type:sensor}
input: VolumeXtime(3, "量增倍數");
settotalbar(3);
if volume > volume[1] * VolumeXtime then ret=1;
