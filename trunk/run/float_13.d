// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/float_13.d,v 1.1 2004/08/23 18:28:08 th Exp $

int main(){
	float f;
	assert(float.min < 0.0000001);
	assert(float.min > double.min);
	assert(float.min == f.min);
	assert(float.min == (4.2f).min);
	return 0;
}
