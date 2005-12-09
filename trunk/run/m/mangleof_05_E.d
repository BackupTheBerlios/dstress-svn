// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_05_E;

int main(){
	char[] m = (short[]*).mangleof;
	if(m == "PAs"){
		return 0;
	}
}
