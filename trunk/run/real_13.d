// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/real_13.d,v 1.1 2004/08/23 19:00:12 th Exp $

int main(){
	real r;
	assert(real.min < 0.00001);
	assert(real.min > 0);
	assert(real.min <= float.min);
	assert(real.min == r.min);
	return 0;
}
