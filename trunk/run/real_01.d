// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/real_01.d,v 1.2 2004/08/23 19:00:12 th Exp $

int main(){
	real r;

	assert( real.init !<> real.nan);
	assert( r.init !<> real.nan);
	assert( r !<> real.nan);
	return 0;
}		
