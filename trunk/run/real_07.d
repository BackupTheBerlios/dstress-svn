
int main(){
	real r;
	assert(real.mant_dig>=8);
	assert(real.mant_dig >= float.mant_dig);
	assert(real.mant_dig == r.mant_dig);
	return 0;
}
