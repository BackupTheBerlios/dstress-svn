// $HeadURL$
// $Date$
// $Author$

// @author@	torhu <fake@address.dude>
// @date@	2007-02-15
// @uri@	http://www.digitalmars.com/webnews/newsgroups.php?search_txt=&group=digitalmars.D&article_id=48845
// @desc@	Re: Compile time function execution...

module dstress.compile.c.const_44_C;

double square(idouble x){
	return x * x;
}

const double foo = square(5.0i);
static assert(25 == foo);
