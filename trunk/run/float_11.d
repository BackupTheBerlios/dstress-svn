// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/float_11.d,v 1.1 2004/08/23 18:28:08 th Exp $

int main(){
	float f;
	assert(float.min_exp < float.min_10_exp);
	assert(float.min_exp > double.min_exp);
	assert(float.min_exp == f.min_exp);
	assert(float.min_exp == (4.2f).min_exp);
	return 0;
}
