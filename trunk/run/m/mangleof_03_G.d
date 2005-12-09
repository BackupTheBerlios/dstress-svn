// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_03_G;

int main(){
	int[byte] t;
	char[] m = typeof(t).mangleof;
	if(m == "Hgi"){
		return 0;
	}
}
