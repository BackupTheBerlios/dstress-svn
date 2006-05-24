// $HeadURL$
// $Date$
// $Author$

// @author@	<h3r3tic@mat.uni.torun.pl>
// @date@	2006-05-05
// @uri@	news:bug-128-3@http.d.puremagic.com/bugzilla/

module dstress.compile.c.class_24_A;

class Foo {
}

typeof(new () class Foo{}) x;

void main(){
	Foo y;
	y = x;
}
