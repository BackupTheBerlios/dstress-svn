// $HeaderURL$
// $Date$
// $Author$

// delegates can't be initialized with non-member functions

module dstress.nocompile.delegate_02;

int test(){
	return 3;
}

int main(){
	int delegate() dl;
	dl = &test;
	return 0;
}
