// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_03_F;

int main(){
	byte[2] t;
	char[] m = typeof(t).mangleof;
	if(m == "G2g"){
		return 0;
	}
}
