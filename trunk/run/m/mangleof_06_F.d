// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_06_F;

int main(){
	ushort[2] x;
	char[] m = typeof(x).mangleof;
	if(m == "G2t"){
		return 0;
	}
}
