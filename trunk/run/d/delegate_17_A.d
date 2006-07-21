// $HeadURL$
// $Date$
// $Author$

// @author@	<sky@quit-clan.de>
// @date@	2006-05-24
// @uri@	news:bug-155-3@http.d.puremagic.com/bugzilla/

module dstress.run.d.delegate_17_A;

int status;

class Foo{
	class Bar{
		int delegate() getDelegate(){
			return &sayHello;
		}
	}
	Bar bar;

	int sayHello(){
		return ++status;
	}

	this(){
		bar = new Bar();
	}
}

int main(){
	Foo foo = new Foo();
	int delegate() hallo;

	hallo = foo.bar.getDelegate();

	if(!hallo){
		assert(0);
	}
	if(status != 0){
		assert(0);
	}
	if(hallo() != 1){
		assert(0);
	}
	if(status != 1){
		assert(0);
	}

	return 0;
}

