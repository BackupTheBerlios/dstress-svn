// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/real_08.d,v 1.1 2004/08/23 19:00:12 th Exp $

int main(){
	real r;
	assert(real.max_10_exp>=20);
	assert(real.max_10_exp >= float.max_10_exp);
	assert(real.max_10_exp == r.max_10_exp);
	return 0;
}
