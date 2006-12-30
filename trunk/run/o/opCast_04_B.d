// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg@iname.com>
// @date@	2006-12-13
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=686
// @desc@	[Issue 686] [Regression] opCast of a struct or union is called in nonsensical circumstances

module dstress.run.o.opCast_04_B;

struct Dog {
	int i = 1;
}

struct Cat {
	int i  = 2;

	Dog foo() {
		return Dog.init;
	}

	void bar() {
		Dog d = foo();
		if(d.i != 1){
			assert(0);
		}
	}
}

int main(){
	Cat c;
	c.bar();
	return 0;
}
