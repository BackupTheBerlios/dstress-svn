// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/real_11.d,v 1.1 2004/08/23 19:00:12 th Exp $

int main(){
	real r;
	assert(real.min_exp < real.min_10_exp);
	assert(real.min_exp <= float.min_exp);
	assert(real.min_exp == r.min_exp);
	return 0;
}
