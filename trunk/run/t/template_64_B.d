// $HeadURL$
// $Date$
// $Author$

// @author@	Christian Kamm <kamm@incasoftware.de>
// @date@	2007-04-24
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=540


module dstress.run.t.template_64_B;

template A(){
	static T foo(T)(T t){
		return t + 1;
	}
}

struct Bar{
	mixin A!() a;
}

int main(){
	if(2 != Bar.a.foo!(int)(1)){
		assert(0);
	}
	return 0;
}
