// invariant is only allowed in classes (dmd-0.104 documentation)

module dstress.nocompile.invariant_07;

int test()
	body{
		return 0;
	}
	invariant{
		assert(0);
	}

int main(){
	return test();
}
