// $HeadURL$
// $Date$
// $Author$

module dstress.run.ptr_04;

int main(){
	Object[0] array;

	assert(!(array.ptr === null));

	return 0;
}
