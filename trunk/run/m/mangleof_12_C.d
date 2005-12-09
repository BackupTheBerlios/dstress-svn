// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_12_C;

int main(){
	char[] m = (double*).mangleof;
	if(m == "Pd"){
		return 0;
	}
}
