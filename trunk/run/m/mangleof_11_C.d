// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_11_C;

int main(){
	char[] m = (float*).mangleof;
	if(m == "Pf"){
		return 0;
	}
}
