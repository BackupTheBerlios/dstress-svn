// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_08_F;

int main(){
	uint[2] x;
	char[] m = typeof(x).mangleof;
	if(m == "G2k"){
		return 0;
	}
}
