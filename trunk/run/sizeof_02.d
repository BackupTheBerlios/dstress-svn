// $HeadURL$
// $Date$
// $Author$

module dstress.run.sizeof_02;

int main(){
	int i[];
	i.length=4;
	if(4 != i.length){
		assert(0);
	}
	if(size_t.sizeof * 2 != i.sizeof){
		assert(0);
	}
	return 0;
}
