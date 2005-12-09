// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_05_B;

int main(){
	char[] m = (short[]).mangleof;
	if(m == "As"){
		return 0;
	}
}
