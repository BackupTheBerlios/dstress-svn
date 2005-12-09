// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_11_B;

int main(){
	char[] m = (float[]).mangleof;
	if(m == "Af"){
		return 0;
	}
}
