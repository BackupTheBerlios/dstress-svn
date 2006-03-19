// $HeadURL$
// $Date$
// $Author$

// @author@	Ivan Senji <ivan.senji@public.srce.hr>
// @date@	2004-05-01
// @uri@	news:c71239$1dij$1@digitaldaemon.com

module dstress.run.complex_01;

int main(){
	creal C, Cj;
	real y, x;

	C  = x + y * 1.0Li + Cj;
	Cj = y * 1.0Li + C + x;
	C  = Cj + 1.0Li * y + x;
	Cj = 1.0Li * y + x + C;

	return 0; 
}
