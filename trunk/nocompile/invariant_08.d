// invariant is only allowed in classes (dmd-0.104 documentation)

module dstress.nocompile.invariant_08;

int test()
{
	invariant{
		assert(0);
	}
	return 0;
}

int main(){
	return test();
}
