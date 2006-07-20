// $HeadURL$
// $Date$
// $Author$

// @author@	xs0 <xs0@xs0.com>
// @date@	2005-08-10
// @uri@	news:dddlpj$q05$1@digitaldaemon.com
// @desc@	foreach doesn't work when accessing elements as supertypes

module dstress.run.c.cast_29_A;

class Foo{
}

class Bar : Foo{
}

int main(){
	Bar[] bars=new Bar[100];
	Foo[] foos=bars;

	foreach(Foo f; foos){
		return 0;
	}

	assert(0);
}
