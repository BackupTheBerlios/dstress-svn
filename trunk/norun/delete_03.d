// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 11

module dstress.run.delete_03;

struct MyStruct{
	delete(void* p){
		assert(0);
	}
}

int main(){
	MyStruct t;
	return 0;
}
