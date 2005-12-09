// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_10_F;

int main(){
	ulong[2] x;
	char[] m = typeof(x).mangleof;
	if(m == "G2m"){
		return 0;
	}
}
