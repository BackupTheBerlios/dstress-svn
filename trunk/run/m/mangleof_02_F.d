// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_02_F;

int main(){
	bit[2] t;
	char[] m = (typeof(t)).mangleof;
	if(m == "G2b"){
		return 0;
	}
}
