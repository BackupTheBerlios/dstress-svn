// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_07_C;

int main(){
	char[] m = (int*).mangleof;
	if(m == "Pi"){
		return 0;
	}
}
