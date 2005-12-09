// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_02_C;

int main(){
	char[] m = (bit*).mangleof;
	if(m == "Pb"){
		return 0;
	}
}
