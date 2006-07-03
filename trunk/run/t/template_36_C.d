// $HeadURL$
// $Date$
// $Author$

// @author@	<h3r3tic@mat.uni.torun.pl>
// @date@	2006-06-22
// @uri@	news:bug-216-3@http.d.puremagic.com/issues/

module dstress.run.t.template_36_C;

int status;

struct S{
	int i;
}

template t(){
	template foo(){
		void foo(S s){
			status = s.i + 1;
		}
	}

	void bar(S s){
		foo!()(s);
	}
}


class Child {
	this() {
	}

	mixin t!() mixed;
}

int main(){
	Child c = new Child();

	S s;
	s.i = 3;

	c.mixed.bar(s);

	if(status != 4){
		assert(0);
	}

	return 0;
}
	
