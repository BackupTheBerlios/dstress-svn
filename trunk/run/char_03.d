module dstress.run.char_03;

int main(){
	char c;
	assert(c.sizeof == byte.sizeof);
	assert(c.sizeof == char.sizeof);
	assert('c'.sizeof == char.sizeof);
	return 0;
}
