// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/float_10.d,v 1.1 2004/08/23 18:28:08 th Exp $

int main(){
	float f;
	assert(float.min_10_exp <= -20);
	assert(float.min_10_exp > double.min_10_exp);
	assert(float.min_10_exp == f.min_10_exp);
	assert(float.min_10_exp == (2.4f).min_10_exp);
	return 0;
}
