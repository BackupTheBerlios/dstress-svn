// invariant is only allowed in classes (dmd-0.104 documentation)

module dstress.nocompile.invariant_04;

struct MyStruct{
	int i;

	void test(){
	}

	invariant{
		assert(0);
	}
}

int main(){
	MyStruct s;
	s.test();
	return 0;
}
