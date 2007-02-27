// $HeadURL$
// $Date$
// $Author$

// @author@	Johan Granberg <lijat.me@gmail.com>
// @date@	2007-01-17
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=853
// @desc@	[Issue 853] Internal error: toir.c 182

module dstress.run.b.bug_toir_182_C;

class StackContext{
	this(void delegate() dg){
	}
}

class Test{
	StackContext context;

	protected void init(){
		context = new StackContext({});
	}
	
	this(){
		init();
	}
}

int main(){
	Test t = new Test();
	if(!t){
		assert(0);
	}
	if(!t.context){
		assert(0);
	}
	return 0;
}
