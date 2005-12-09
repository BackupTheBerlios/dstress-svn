// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_10_G;

int main(){
	char[] m = (int[ulong]).mangleof;
	if(m == "Hmi"){
		return 0;
	}
}
