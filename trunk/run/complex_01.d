// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/complex_01.d,v 1.1 2004/08/20 23:42:52 th Exp $

// @author@	Ivan Senji <ivan.senji@public.srce.hr>
// @date@	2004-05-01
// @uri@	news://c71239$1dij$1@digitaldaemon.com

int main(){
	creal C, Cj;
	real y, x;

	C  = x + y * 1i + Cj;
	Cj = y * 1i + C + x;
	C  = Cj + 1i * y + x;
	Cj = 1i * y + x + C;

	return 0; 
}
