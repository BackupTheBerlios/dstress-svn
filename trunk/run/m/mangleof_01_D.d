// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_01_D;

int main(){
	char[] m = (void*[]).mangleof;
	if(m == "APv"){
		return 0;
	}
}
