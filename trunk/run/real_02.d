// $HeadURL$
// $Date$
// $Author$

module dstress.run.real_02;

int main(){
	real r;
	assert(real.sizeof >= float.sizeof);
	assert(real.sizeof == r.sizeof);
	assert(real.sizeof == typeid(real).tsize());
	return 0;
}
