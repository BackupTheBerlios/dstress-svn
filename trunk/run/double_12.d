// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/double_12.d,v 1.1 2004/08/23 18:28:08 th Exp $

int main(){
	double d;
	assert(double.max > 0xFFFFFFF);
	assert(double.max < double.infinity);
	assert(d.max == double.max);
	assert((4.2).max == double.max);
	return 0;
}
