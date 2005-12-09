// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_01_E;

int main(){
	char[] m = (void[]*).mangleof;
	if(m == "PAv"){
		return 0;
	}
}
