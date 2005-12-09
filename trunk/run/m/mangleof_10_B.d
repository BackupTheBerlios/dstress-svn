// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_10_B;

int main(){
	char[] m = (ulong[]).mangleof;
	if(m == "Am"){
		return 0;
	}
}
