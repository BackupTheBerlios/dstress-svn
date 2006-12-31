// $HeadURL$
// $Date$
// $Author$

// @author@	<h3r3tic@mat.uni.torun.pl>
// @date@	2006-05-23
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=154

module dstress.run.d.delete_14_B;

class Foo{
	this(){
	}

	new (size_t s){
		return (new byte[s]).ptr;
	}

	delete(void* p){
		if (p){
			delete p;
		}
	}
}

int main() {
	Foo f = new Foo();
	delete f;

	return 0;
}
