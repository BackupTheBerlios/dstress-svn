// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_05_C;

int main(){
	char[] m = (short*).mangleof;
	if(m == "Ps"){
		return 0;
	}
}
