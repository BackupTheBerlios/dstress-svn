// $HeadURL$
// $Date$
// $Author$

// check that char is unsigned

module dstress.run.char_06;

int main(){
	char a = '\xFB';
	ubyte b = 0xFBu;
	
	void* d = &a;
	void* e = &b;

	assert(*(cast(byte*)(e)) == *(cast(byte*)(d)));

	return 0;
}
