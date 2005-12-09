// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_03_E;

int main(){
	char[] m = (byte[]*).mangleof;
	if(m == "PAg"){
		return 0;
	}
}
