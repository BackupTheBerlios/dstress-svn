// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_02_E;

int main(){
	char[] m = (bool[]*).mangleof;
	if(m == "PAb"){
		return 0;
	}
}
