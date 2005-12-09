// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_10_D;

int main(){
	char[] m = (ulong*[]).mangleof;
	if(m == "APm"){
		return 0;
	}
}
