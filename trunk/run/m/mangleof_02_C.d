// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_02_C;

int main(){
	char[] m = (bool*).mangleof;
	if(m == "Px"){
		return 0;
	}
}
