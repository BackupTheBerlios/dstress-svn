// $HeadURL$
// $Date$
// $Author$

// @author@	Tomas Lindquist Olsen <tomas@famolsen.dk>
// @date@	2007-03-05
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1025
// @desc@	[Issue 1025] mixin("scope(exit) call();"); is broken

module dstress.run.m.mixin_27_B;

int status;

void test(){
	mixin("status += 1;");
	mixin("scope(success) status *= 2;");
	mixin("status += 5;");
}

int main(){
	test();
	if(12 != status){
		assert(0);
	}
	return 0;
}
