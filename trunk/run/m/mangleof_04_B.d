// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_04_B;

int main(){
	char[] m = (ubyte[]).mangleof;
	if(m == "Ah"){
		return 0;
	}
}
