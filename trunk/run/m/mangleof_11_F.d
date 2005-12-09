// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_11_F;

int main(){
	float[2] x;
	char[] m = typeof(x).mangleof;
	if(m == "G2f"){
		return 0;
	}
}
