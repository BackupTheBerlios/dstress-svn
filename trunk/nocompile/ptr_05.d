// $HeadURL$
// $Date$
// $Author$

module dstress.nocompile.ptr_05;

int main(){
	Object[char[]] array;

	assert(array.ptr === null);

	return 0;
}
