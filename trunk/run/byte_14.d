
int main(){
	byte b;

	assert(b.min == -128);
	assert(byte.min == -128);
	assert((cast(byte)1).min == -128);

	return 0;
}
