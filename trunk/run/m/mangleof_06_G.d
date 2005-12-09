// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_06_G;

int main(){
	int[ushort] x;
	char[] m = typeof(x).mangleof;
	if(m == "Hti"){
		return 0;
	}
}
