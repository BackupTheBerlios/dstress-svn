
int main(){
	real r;
	assert(real.sizeof >= float.sizeof);
	assert(real.sizeof == r.sizeof);
	assert(real.sizeof == typeid(real).tsize());
	return 0;
}
