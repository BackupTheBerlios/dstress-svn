// @author@	Ben Hinkle <bhinkle4@juno.com>
// @date@	2004-09-26
// @uri@	news://cj6g4d$9iv$1@digitaldaemon.com
// @url@	nttp://digitalmars.com/digitalmars.D.bugs:1953

module dstress.run.odd_bug_02;

// @WARNING@: this code requires phobos
import std.stdarg;

struct TestStruct{
	void add(...){
		TestStruct other = va_arg!(TestStruct)(_argptr);
		foreach(int value; other){
			foo();
		}
	}

	void foo(){
		assert(left is null);
		bar();
	}

	void bar(){
		assert(left is null);
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

