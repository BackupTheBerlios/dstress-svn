// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/float_04.d,v 1.1 2004/08/23 18:28:08 th Exp $

int main(){
	float f;
	assert(float.infinity > float.max);
	assert(float.infinity == f.infinity);
	assert(float.infinity == (4.2f).infinity);
	return 0;
}
