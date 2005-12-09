// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_12_D;

int main(){
	char[] m = (double*[]).mangleof;
	if(m == "APd"){
		return 0;
	}
}
