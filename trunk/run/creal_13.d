// $HeadURL$
// $Date$
// $Author$

module dstress.run.creal_13;

int main(){
	creal a;
	creal b;
	byte* X = cast(byte*)(cast(void*)&a);

	b = real.init + ireal.init;
	byte* Y = cast(byte*)(cast(void*)&b);

	for(int i=0; i<a.sizeof; i++){
		assert(X[i]==Y[i]);
	}

	real c;
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
