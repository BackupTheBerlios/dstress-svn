// $HeadURL$
// $Date$
// $Author$

module dstress.run.m.mangleof_13_C;

int main(){
	char[] m = (real*).mangleof;
	if(m == "Pe"){
		return 0;
	}
}
