// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_10_C;

int main(){
	char[] m = (ulong*).mangleof;
	if(m == "Pm"){
		return 0;
	}
}
