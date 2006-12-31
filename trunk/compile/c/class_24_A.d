// $HeadURL$
// $Date$
// $Author$

// @author@	<h3r3tic@mat.uni.torun.pl>
// @date@	2006-05-05
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=128

module dstress.compile.c.class_24_A;

class Foo {
}

typeof(new () class Foo{}) x;

void main(){
	Foo y;
	y = x;
}
