// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_09_E;

int main(){
	char[] m = (long[]*).mangleof;
	if(m == "PAl"){
		return 0;
	}
}
