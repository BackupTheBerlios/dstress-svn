// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_06_C;

int main(){
	char[] m = (ushort*).mangleof;
	if(m == "Pt"){
		return 0;
	}
}
