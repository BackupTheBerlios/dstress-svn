// $HeadURL$
// $Date$
// $Author$

// @WARNING@ direct usage of Phobos's GC

module dstress.run.delete_01;
import std.gc;

int status;

class MyClass{
	~this(){
		assert(status==0);
		status--;
	}

	delete(void* p){
		assert(status==-1);
		status--;
	}
}

void test(){
	MyClass c=new MyClass();
	assert(status==0);
	delete c;
}

int main(){
	test();
	assert(status<=-1);
	std.gc.fullCollect();	
	assert(status==-2);
	return 0;
}
