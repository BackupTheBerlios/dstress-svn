// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/float_09.d,v 1.1 2004/08/23 18:28:08 th Exp $

int main(){
	float f;
	assert(float.max_exp > float.max_10_exp);
	assert(float.max_exp < double.max_exp);
	assert(float.max_exp == f.max_exp);
	assert(float.max_exp == (2.4f).max_exp);
	return 0;
}
