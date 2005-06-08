// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 12

module dstress.nocompile.ptr_05;

int main(){
	Object[char[]] array;

	assert(array.ptr is null);

	return 0;
}
