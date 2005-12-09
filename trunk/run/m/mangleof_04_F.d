// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_04_A;

int main(){
	ubyte[2] t;
	char[] m = typeof(t).mangleof;
	if(m == "G2h"){
		return 0;
	}
}
