// $HeadURL$
// $Date$
// $Author$

// @author@	Max Samuha <maxter@i.com.ua>
// @date@	2007-02-16
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=969
// @desc@	[Issue 969] 'this' needed for class member

module dstress.run.b.bug_template_2851_A;

void foo(alias T)(){
	assert(3 == T);
}

void bar(alias T)(){
	foo!(T)foo();
}

class Test{
	int a;
	mixin bar!(a);
}

int main(){
	Test t = new Test();
	t.a = 3;
	t.bar();
	return 0;
}
