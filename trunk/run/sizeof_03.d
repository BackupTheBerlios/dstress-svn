// $HeadURL$
// $Date$
// $Author$

module dstress.run.sizeof_03;

int main(){
	bool i[];
	i.length=4;
	if(4 != i.length){
		assert(0);
	}
	if(2 * size_t.sizeof != i.sizeof){
		assert(0);
	}
	return 0;
}
