// $HeadURL$
// $Date$
// $Author$

// @author@	<sky@quit-clan.de>
// @date@	2006-05-24
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=156

module dstress.run.i.inline_16_B;

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
	Foo f = new Foo2();

	if(status != 0){
		assert(0);
	}

	f.bar.doSayHello();

	if(status != 1){
		assert(0);
	}

	return 0;
}

