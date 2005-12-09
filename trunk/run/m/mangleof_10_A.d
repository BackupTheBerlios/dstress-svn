// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_10_A;

int main(){
	char[] m = ulong.mangleof;
	if(m == "m"){
		return 0;
	}
}
