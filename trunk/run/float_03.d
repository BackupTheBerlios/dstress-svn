// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/float_03.d,v 1.1 2004/08/23 18:28:08 th Exp $

int main(){
	float f;

	assert(float.alignof >= 4);
	assert(float.alignof <= double.alignof);
	assert(float.alignof >= float.sizeof);
	assert(float.alignof == f.alignof);
	assert(float.alignof == (4.2f).alignof);

	return 0;
}
