// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_09_F;

int main(){
	long[2] x;
	char[] m = typeof(x).mangleof;
	if(m == "G2l"){
		return 0;
	}
}
