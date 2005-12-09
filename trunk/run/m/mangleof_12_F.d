// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_12_F;

int main(){
	double[2] x;
	char[] m = typeof(x).mangleof;
	if(m == "G2d"){
		return 0;
	}
}
