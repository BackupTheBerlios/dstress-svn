// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/byte_01.d,v 1.3 2004/08/21 21:38:30 th Exp $

int main(){
	byte a;

	assert( a.init == 0);
	assert( byte.init == 0);
	assert((cast(byte)2).init == 0);

	return 0; 
}
