// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/float_12.d,v 1.1 2004/08/23 18:28:08 th Exp $

int main(){
	float f;
	assert(float.max > 0xFFFFFFF);
	assert(float.max < double.max);
	assert(float.max < float.infinity);
	assert(float.max == f.max);
	assert(float.max == (2.4f).max);
	return 0;
}
