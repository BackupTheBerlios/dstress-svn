// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_13_F;

int main(){
	real[2] x;
	char[] m = typeof(x).mangleof;
	if(m == "G2e"){
		return 0;
	}
}
