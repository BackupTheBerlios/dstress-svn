// $HeadURL$
// $Date$
// $Author$

// @author@	Ivan Senji <ivan.senji@public.srce.hr>
// @date@	2004-05-01
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=54

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
