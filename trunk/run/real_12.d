// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/real_12.d,v 1.1 2004/08/23 19:00:12 th Exp $

int main(){
	real r;
	assert(real.max > 0xFFFFFFF);
	assert(real.max > float.max);
	assert(real.max < real.infinity);
	assert(real.max == r.max);
	return 0;
}
