// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/real_05.d,v 1.1 2004/08/23 19:00:12 th Exp $

int main(){
	real r;
	assert( real.dig > 9 );
	assert( real.dig >= float.dig );
	assert( real.dig == r.dig );
	return 0;
}
