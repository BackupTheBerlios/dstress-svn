// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/real_07.d,v 1.1 2004/08/23 19:00:12 th Exp $

int main(){
	real r;
	assert(real.mant_dig>=8);
	assert(real.mant_dig >= float.mant_dig);
	assert(real.mant_dig == r.mant_dig);
	return 0;
}
