module dstress.run.creal_19;

int main(){
	assert(creal.re.mant_dig <= real.mant_dig);
	assert(creal.im.mant_dig <= ireal.mant_dig);
	return 0;
}
