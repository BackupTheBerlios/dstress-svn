module dstress.run.real_03;

int main(){
	real r;

	assert(real.alignof >= float.alignof);
	assert(real.alignof >= real.sizeof);
	assert(real.alignof == r.alignof);

	return 0;
}
