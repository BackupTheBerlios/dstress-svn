// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/byte_11.d,v 1.2 2004/08/21 21:38:30 th Exp $

int main(){
	byte a;

	assert(a.sizeof == 1);
	assert(byte.sizeof == 1);
	assert((cast(byte)1).sizeof == 1);
	assert(typeid(byte).tsize() == 1);

	return 0; 
}
