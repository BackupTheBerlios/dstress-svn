// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/uint_01.d,v 1.2 2004/08/21 21:38:30 th Exp $

int main(){
	uint a;
	
	assert( a.init == 0 );
	assert( uint.init == 0 );
	assert( a == 0 );

	return 0; 
}
