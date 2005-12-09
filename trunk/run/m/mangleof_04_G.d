// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_04_G;

int main(){
	int[ubyte] t;
	char[] m = typeof(t).mangleof;
	if(m == "Hhi"){
		return 0;
	}
}
