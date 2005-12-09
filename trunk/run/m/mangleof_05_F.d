// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_05_F;

int main(){
	short[2] x;
	char[] m = typeof(x).mangleof;
	if(m == "G2s"){
		return 0;
	}
}
