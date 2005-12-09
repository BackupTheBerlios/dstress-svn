// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_11_G;

int main(){
	char[] m = (int[float]).mangleof;
	if(m == "Hfi"){
		return 0;
	}
}
