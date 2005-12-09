// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_06_D;

int main(){
	char[] m = (ushort*[]).mangleof;
	if(m == "APt"){
		return 0;
	}
}
