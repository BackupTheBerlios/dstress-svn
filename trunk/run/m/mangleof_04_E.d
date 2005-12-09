// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_04_E;

int main(){
	char[] m = (ubyte[]*).mangleof;
	if(m == "PAh"){
		return 0;
	}
}
