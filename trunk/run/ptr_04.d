// $HeadURL$
// $Date$
// $Author$

module dstress.run.ptr_04;

int main(){
	Object[0] array;

	if(!(array.ptr is null)){
		assert(0);
	}

	return 0;
}
