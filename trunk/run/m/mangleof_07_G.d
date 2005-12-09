// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_07_G;

int main(){
	uint[int] x;
	char[] m = typeof(x).mangleof;
	if(m == "Hik"){
		return 0;
	}
}
