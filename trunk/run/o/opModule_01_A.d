// $HeadURL$
// $Date$
// $Author$

// @author@	<lio@lunesu.com>
// @date@	2006-05-18
// @uri@	news:bug-145-3@http.d.puremagic.com/bugzilla/

module dstress.run.o.opModule_01_A;

float foo(float f){
	return f + 1.0f;
}

int main(){
	if(cast(int) .foo(2.0f) != 3){
		assert(0);
	}
	return 0;
}
