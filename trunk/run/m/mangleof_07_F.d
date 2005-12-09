// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_07_F;

int main(){
	int[2] x;
	char[] m = typeof(x).mangleof;
	if(m == "G2i"){
		return 0;
	}
}
