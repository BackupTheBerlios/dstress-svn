// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/double_02.d,v 1.2 2004/08/23 18:28:08 th Exp $

int main(){
	double d;
	assert(double.sizeof == 8);
	assert(double.sizeof == d.sizeof);
	assert(double.sizeof == (4.2).sizeof);
	assert(double.sizeof == typeid(double).tsize());
	return 0;
}
