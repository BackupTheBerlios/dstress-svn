// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_08_E;

int main(){
	char[] m = (uint[]*).mangleof;
	if(m == "PAk"){
		return 0;
	}
}
