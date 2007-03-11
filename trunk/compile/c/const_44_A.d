// $HeadURL$
// $Date$
// $Author$

// @author@	torhu <fake@address.dude>
// @date@	2007-02-15
// @uri@	http://www.digitalmars.com/webnews/newsgroups.php?search_txt=&group=digitalmars.D&article_id=48845
// @desc@	Re: Compile time function execution...

module dstress.compile.c.const_44_A;

int square(int x){
	return x * x;
}

const int foo = square(5);
static assert(25 == foo);
