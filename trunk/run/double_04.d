// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/double_04.d,v 1.1 2004/08/21 22:24:06 th Exp $

int main(){
	double d;
	assert(double.infinity > double.max);
	assert(d.infinity == double.infinity);
	assert((4.2).infinity == double.infinity);
	return 0;
}
