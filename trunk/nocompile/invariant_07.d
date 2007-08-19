// $HeadURL$
// $Date$
// $Author$

// invariant is only allowed in classes (dmd-0.104 documentation)

// __DSTRESS_ELINE__ 15

module dstress.nocompile.invariant_07;

int test()
	body{
		return 0;
	}
	invariant(){
		assert(0);
	}

int main(){
	return test();
}
