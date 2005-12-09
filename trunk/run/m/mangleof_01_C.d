// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_01_C;

int main(){
	char[] m = (void*).mangleof;
	if(m == "Pv"){
		return 0;
	}
}
