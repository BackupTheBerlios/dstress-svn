// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/byte_13.d,v 1.3 2004/08/21 21:38:30 th Exp $

int main(){
	byte a;
	
	assert(a.max == 127);
	assert(byte.max == 127);
	assert((cast(byte)1).max == 127);

	return 0; 
}
