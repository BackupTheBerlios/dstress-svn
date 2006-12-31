// $HeadURL$
// $Date$
// $Author$

// @author@	<lio@lunesu.com>
// @date@	2006-05-18
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=145

module dstress.run.o.opModule_01_B;

float foo(float f){
	return f + 1.0f;
}

int main(){
	if(cast(int) (.foo(2.0f)) != 3){
		assert(0);
	}
	return 0;
}
