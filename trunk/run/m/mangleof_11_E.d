// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_11_E;

int main(){
	char[] m = (float[]*).mangleof;
	if(m == "PAf"){
		return 0;
	}
}
