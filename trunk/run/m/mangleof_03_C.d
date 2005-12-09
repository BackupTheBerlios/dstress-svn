// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_03_C;

int main(){
	char[] m = (byte*).mangleof;
	if(m == "Pg"){
		return 0;
	}
}
