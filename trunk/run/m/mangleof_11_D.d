// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_11_D;

int main(){
	char[] m = (float*[]).mangleof;
	if(m == "APf"){
		return 0;
	}
}
