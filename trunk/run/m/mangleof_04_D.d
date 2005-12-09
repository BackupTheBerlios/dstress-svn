// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_04_D;

int main(){
	char[] m = (ubyte*[]).mangleof;
	if(m == "APh"){
		return 0;
	}
}
