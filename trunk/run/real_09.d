// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/real_09.d,v 1.1 2004/08/23 19:00:12 th Exp $

int main(){
	real r;
	assert(real.max_exp > real.max_10_exp);
	assert(real.max_exp >= float.max_exp);
	assert(real.max_exp == r.max_exp);
	return 0;
}
