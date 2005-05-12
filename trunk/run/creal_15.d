// $HeadURL$
// $Date$
// $Author$

module dstress.run.creal_15;

int main(){
	creal a = creal.nan;
	creal b;
	byte* X = cast(byte*)(cast(void*)&a);

	b = real.nan + ireal.nan;
	byte* Y = cast(byte*)(cast(void*)&b);

	for(int i=0; i<a.sizeof; i++){
		assert(X[i]==Y[i]);
	}

	real c= real.nan;
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
