// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2006-02-15
// @uri@	news:dsv036$qlt$1@digitaldaemon.com

module dstress.run.d.delete_12_A;

int status;

class Foo{
	new(size_t sz){
		void* p;

		p = (new byte[sz]).ptr;
    
		if(status++ != 1){
			assert(0);
		}

		return p;
	}

	delete(void* p){
		if(status++ != 2){
			assert(0);
		}
	}
}

void test(){
	auto Foo f = new Foo();
}

int main(){
	if(status++ != 0){
		assert(0);
	}

	test();

	if(status++ != 3){
		assert(0);
	}

	return 0;
}
