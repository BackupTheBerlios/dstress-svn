// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 11

module dstress.run.delete_05;

union MyUnion{
	delete(void* p){
		assert(0);
	}
}

int main(){
	MyUnion u;
	return 0;
}
