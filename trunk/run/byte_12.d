
int main(){
	byte a;

	assert(a.alignof >= a.sizeof);
	assert(byte.alignof == a.alignof);
	assert((cast(byte)1).alignof == a.alignof);
	return 0; 
}
