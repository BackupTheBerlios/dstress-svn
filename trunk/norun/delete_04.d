// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 11

module dstress.run.delete_04;

class MyClass{
	delete(void* p){
		assert(0);
	}
}

int main(){
	MyClass o=new MyClass();
	return 0;
}
