// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/byte_12.d,v 1.2 2004/08/21 21:38:30 th Exp $

int main(){
	byte a;

	assert(a.alignof >= a.sizeof);
	assert(byte.alignof == a.alignof);
	assert((cast(byte)1).alignof == a.alignof);
	return 0; 
}
