// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_01_B;

int main(){
	char[] m = (void[]).mangleof;
	if(m == "Av"){
		return 0;
	}
}
