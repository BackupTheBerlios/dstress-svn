// $HeadURL$
// $Date$
// $Author$

// @author@	Kris <fu@bar.com>
// @date@	2005-11-18
// @uri@	news:dllsvr$2agc$1@digitaldaemon.com

module dstress.run.v.variadic_argument_10_E;

int state;

class Bar{
	this(...){
	}
}

class Foo{
	void opAddAssign(Bar b){
		assert(b);
		state++;
	}
}

int main(){
	Foo f = new Foo;
	assert(state == 0);
	assert(f);
	
	f += new Bar;

	assert(state == 1);
	assert(f);

	return 0;
}

