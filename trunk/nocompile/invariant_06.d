// invariant is only allowed in classes (dmd-0.104 documentation)

module dstress.nocompile.invariant_06;

union MyUnion{
	int i;
	
	void test(){
	}	
	
	invariant{
		assert(0);
	}
}

int main(){
	MyUnion u;
	u.test();
	return 0;
}
