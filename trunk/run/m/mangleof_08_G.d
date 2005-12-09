// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_08_F;

int main(){
	int[uint] x;
	char[] m = typeof(x).mangleof;
	if(m == "Hki"){
		return 0;
	}
}
