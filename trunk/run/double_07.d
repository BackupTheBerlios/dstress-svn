// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/double_07.d,v 1.1 2004/08/23 17:42:18 th Exp $

int main(){
	double d;
	assert(double.mant_dig>=8);
	assert(d.mant_dig==double.mant_dig);
	assert((2.3).mant_dig==double.mant_dig);
	return 0;
}
