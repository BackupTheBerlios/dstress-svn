// $HeadURL$
// $Date$
// $Author$

// @author@	Jarrett Billingsley <kb3ctd2@yahoo.com>
// @date@	2005-02-28
// @uri@	news:d004cg$p47$1@digitaldaemon.com

module dstress.run.array_initialization_05;

int main(){
	int[] a;
	a.length=2;
	a[0]=5;
	a[1]=10;
	int[] b=a.init;
	assert(b.length==0);
	return 0;
}

