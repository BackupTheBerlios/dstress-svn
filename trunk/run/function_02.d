// $HeadURL$
// $Date$
// $Author$

// @author@	Benjamin Herr
// @date@	2005-04-09

module dstress.run.function_02;

int status;

class Foo {
        this(int i) {
                this.i = i;
        }
 
        void f() {
		assert(i==123);
		status++;
        }
 
        int i;
}
 
int main() {
	void function(Foo f) fg = cast(void function(Foo f)) &Foo.f;

	assert(status==0);
	fg(new Foo(123));
	assert(status==1);
 
        return 0;
}
