// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_05_G;

int main(){
	int[short] x;
	char[] m = typeof(x).mangleof;
	if(m == "Hsi"){
		return 0;
	}
}
