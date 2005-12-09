// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_03_D;

int main(){
	char[] m = (byte*[]).mangleof;
	if(m == "APg"){
		return 0;
	}
}
