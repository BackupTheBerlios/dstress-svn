// $HeadURL$
// $Date$
// $Author$

// @author@	<h3r3tic@mat.uni.torun.pl>
// @date@	2006-05-27
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=158

module dstress.run.u.union_17_B;

struct Bar {
	union {
		union {
			union {
				Foo f;
			}
		}
	}
}

struct Foo {
	int i;
}

static if(Foo.sizeof != Bar.sizeof){
	static assert(0);
}

int main(){
	Foo a;
	a.i = 2;
	
	Bar b;
	b.f = a;

	a.i = 3;
	
	if(a.i != 3){
		assert(0);
	}

	if(b.f.i != 2){
		assert(0);
	}

	return 0;
}
