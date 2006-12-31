// $HeadURL$
// $Date$
// $Author$

// @author@	<h3r3tic@mat.uni.torun.pl>
// @date@	2006-06-22
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=216

module dstress.run.t.template_36_B;

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


class Parent {
	this() {
	}
}


class Child : Parent {
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
	
