module dstress.run.creal_16;

int main(){
	size_t a = real.dig;
	size_t b = ireal.dig;
	a = (a>b) ? (b) : (a);
	assert(creal.dig <= a);
	return 0;
}
