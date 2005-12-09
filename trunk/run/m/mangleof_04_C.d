// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_04_C;

int main(){
	char[] m = (ubyte*).mangleof;
	if(m == "Ph"){
		return 0;
	}
}
