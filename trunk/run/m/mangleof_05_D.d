// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_05_D;

int main(){
	char[] m = (short*[]).mangleof;
	if(m == "APs"){
		return 0;
	}
}
