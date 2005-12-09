// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_12_B;

int main(){
	char[] m = (double[]).mangleof;
	if(m == "Ad"){
		return 0;
	}
}
