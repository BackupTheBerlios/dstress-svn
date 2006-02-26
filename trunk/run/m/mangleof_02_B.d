// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_02_B;

int main(){
	char[] m = (bool[]).mangleof;
	if(m == "Ax"){
		return 0;
	}
}
