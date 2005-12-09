// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_04_A;

int main(){
	char[] m = ubyte.mangleof;
	if(m == "h"){
		return 0;
	}
}
