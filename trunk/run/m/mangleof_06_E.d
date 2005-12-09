// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_06_E;

int main(){
	char[] m = (ushort[]*).mangleof;
	if(m == "PAt"){
		return 0;
	}
}
