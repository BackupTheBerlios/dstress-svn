// $HeadURL$
// $Date$
// $Author$

module dstress.run.creal_14;

int main(){
	creal a = creal.infinity;
	creal b;
	byte* X = cast(byte*)(cast(void*)&a);

	b = real.infinity + ireal.infinity;
	byte* Y = cast(byte*)(cast(void*)&b);

	for(int i=0; i<a.sizeof; i++){
		assert(X[i]==Y[i]);
	}

	real c = real.infinity;
	real d=a.re;
	X = cast(byte*)(cast(void*)&c);
	Y = cast(byte*)(cast(void*)&d);

	for(int i=0; i<c.sizeof; i++){
		assert(X[i]==Y[i]);
	}

	d=a.im;
	X = cast(byte*)(cast(void*)&c);
	Y = cast(byte*)(cast(void*)&d);
	for(int i=0; i<c.sizeof; i++){
		assert(X[i]==Y[i]);
	}
	
	return 0;
}
