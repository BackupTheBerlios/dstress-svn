// $HeadURL$
// $Date$
// $Author$

// @author@	<sky@quit-clan.de>
// @date@	2006-05-24
// @uri@	news:bug-156-3@http.d.puremagic.com/bugzilla/

module dstress.run.i.inline_16_A;

int status;

class Foo{
	class Bar{
		void doSayHello(){
			sayHello();
		}
	}

	Bar bar;

	void sayHello(){
		status++;
	}

	this(){
		bar = new Bar();
	}
}

class Foo2 : Foo{
}

int main(){
	Foo f = new Foo();

	if(status != 0){
		assert(0);
	}

	f.bar.doSayHello();

	if(status != 1){
		assert(0);
	}

	return 0;
}

