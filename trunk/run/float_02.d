// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/float_02.d,v 1.1 2004/08/23 18:28:08 th Exp $

int main(){
	float d;
	assert(float.sizeof == 4);
	assert(float.sizeof < double.sizeof);
	assert(float.sizeof == d.sizeof);
	assert(float.sizeof == (4.2f).sizeof);
	assert(float.sizeof == typeid(float).tsize());
	return 0;
}
