// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/float_07.d,v 1.1 2004/08/23 18:28:08 th Exp $

int main(){
	float f;
	assert(float.mant_dig >= 8);
	assert(float.mant_dig < double.mant_dig);
	assert(float.mant_dig == f.mant_dig);
	assert(float.mant_dig == (2.4f).mant_dig);
	return 0;
}
