// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_08_D;

int main(){
	char[] m = (uint*[]).mangleof;
	if(m == "APk"){
		return 0;
	}
}
