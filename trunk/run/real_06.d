// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/real_06.d,v 1.1 2004/08/23 19:00:12 th Exp $

int main(){
	real r;
	assert(real.epsilon > 0);
	assert(real.epsilon < 0.00001 );
	assert(real.epsilon == r.epsilon);
	return 0;
}
