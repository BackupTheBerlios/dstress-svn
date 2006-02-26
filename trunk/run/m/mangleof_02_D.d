// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_02_D;

int main(){
	char[] m = (bool*[]).mangleof;
	if(m == "APx"){
		return 0;
	}
}
