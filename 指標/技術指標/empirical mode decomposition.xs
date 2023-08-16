{@type:indicator}
input:
	period(20),
	delta(0.1),
	fraction(0.1);
	
variable: 
	price(0),gamma(0),alpha(0),beta(0),BP(0),
	mean(0),peak(0),valley(0),avgpeak(0),avgvalley(0);

price=(h+l)/2;

beta=cosine(360/period);
gamma=1/cosine(720*delta/period);
alpha=gamma-squareroot(gamma*gamma-1);
BP=0.5*(1-alpha)*(price-price[2])+beta*(1+alpha)*BP[1]-alpha*BP[2];
mean=average(bp,2*period);
peak=peak[1];
valley=valley[1];

if bp[1]>bp and bp[1]>bp[2] then peak=bp[1];
if bp[1]<bp and bp[1]<bp[2] then valley=bp[1];
avgpeak=average(peak,50);
avgvalley=average(valley,50);

plot1(mean);
plot2(fraction*avgpeak);
plot3(fraction*avgvalley);
