{@type:sensor}
input: length(20, "均量期數");
input: confirmVolume(500, "突破均量張數");

settotalbar(3);
setbarback(Length);

if volume > Average( volume[1],length) +confirmVolume then ret=1;



        