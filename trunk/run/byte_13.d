
int main(){
	byte a;
	
	assert(a.max == 127);
	assert(byte.max == 127);
	assert((cast(byte)1).max == 127);

	return 0; 
}
