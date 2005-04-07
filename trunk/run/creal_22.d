// $HeadURL$
// $Date$
// $Author$

// @auhtor@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-07
// @uri@	news:d33938$212r$1@digitaldaemon.com

module dstress.run.creal_22;
 
int main(){
	creal c = 1.3Li;
	assert(c.re==0.0L);
	assert(c.im==1.3L);
	return 0;
}
