// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_09_C;

int main(){
	char[] m = (long*).mangleof;
	if(m == "Pl"){
		return 0;
	}
}
