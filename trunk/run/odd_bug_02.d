// @author@	Ben Hinkle <bhinkle4@juno.com>
// @date@	2004-09-26

import std.stdarg;

struct TestStruct{
	void add(...){
		TestStruct other = va_arg!(TestStruct)(_argptr);
		foreach(int value; other){
			foo();
		}
	}

	void foo(){
		assert(left==null);
		bar();
	}

	void bar(){
		assert(left==null);
	}

	int opApply(int delegate(inout int val) dg){
		return 0;
	}

	void* left;
}

int main(){
	TestStruct t;
	t.foo();
	return 0;
}

