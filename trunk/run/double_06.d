// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/double_06.d,v 1.1 2004/08/21 22:24:06 th Exp $

int main(){
	double d;
	assert(double.epsilon > 0);
	assert(double.epsilon < ( 1% (10 ^(double.dig) ) ) );
	assert(d.epsilon == double.epsilon);
	assert((4.2).epsilon == double.epsilon);
	return 0;
}
