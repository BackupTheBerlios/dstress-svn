// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/byte_14.d,v 1.2 2004/08/21 22:24:06 th Exp $

int main(){
	byte b;

	assert(b.min == -128);
	assert(byte.min == -128);
	assert((cast(byte)1).min == -128);

	return 0;
}
