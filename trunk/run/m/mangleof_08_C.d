// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_08_C;

int main(){
	char[] m = (uint*).mangleof;
	if(m == "Pk"){
		return 0;
	}
}
