// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/double_03.d,v 1.1 2004/08/21 22:24:06 th Exp $

int main(){
	double d;

	assert(double.alignof >= 8);
	assert(d.alignof == double.alignof);
	assert((4.2).alignof == double.alignof);

	return 0;
}
