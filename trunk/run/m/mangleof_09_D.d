// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_09_D;

int main(){
	char[] m = (long*[]).mangleof;
	if(m == "APl"){
		return 0;
	}
}
