// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2006-02-15
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6267

module dstress.run.d.delete_12_C;

int status;

class Foo{
	int i;

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
	Foo f = new Foo();
	delete f;
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
