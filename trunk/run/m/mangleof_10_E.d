// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_10_E;

int main(){
	char[] m = (ulong[]*).mangleof;
	if(m == "PAm"){
		return 0;
	}
}
