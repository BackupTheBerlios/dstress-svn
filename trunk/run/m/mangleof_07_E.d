// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_07_E;

int main(){
	char[] m = (int[]*).mangleof;
	if(m == "PAi"){
		return 0;
	}
}
