// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_12_E;

int main(){
	char[] m = (double[]*).mangleof;
	if(m == "PAd"){
		return 0;
	}
}
