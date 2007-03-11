// $HeadURL$
// $Date$
// $Author$

// @author@	Gregor Richards <Richards@codu.org>
// @date@	2007-02-15
// @uri@	http://www.digitalmars.com/webnews/newsgroups.php?group=digitalmars.D&article_id=48811
// @desc@	Re: Compile time function execution...

module dstress.run.m.mixin_28_B;

int state;

void bar(){
	state++;
}

dchar[] foo(){
	return "bar();";
}

int main(){
	if(0 != state){
		assert(0);
	}

	mixin(foo());

	if(1 != state){
		assert(0);
	}
	return 0;
}
