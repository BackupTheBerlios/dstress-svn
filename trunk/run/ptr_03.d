// $HeadURL$
// $Date$
// Author$

module dstress.run.ptr_03;

int main(){
	Object[] array;
	array.length=0;

	assert(array.ptr === null);

	return 0;
}
