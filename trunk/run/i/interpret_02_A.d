// $HeadURL$
// $Date$
// $Author$

// @author@	Brian Byrne <bdbyrne@wisc.edu>
// @date@	2007-02-16
// @uri@	http://www.digitalmars.com/webnews/newsgroups.php?group=digitalmars.D&article_id=48990
// @desc@	Re: Compile time function execution...

module dstress.run.i.interpret_02_A;

char[] foo() {
	return( "bar" );
}

int main() {
	const char[] bar = foo();
	if("bar" != bar){
		assert(0);
	}
	return 0;
}
