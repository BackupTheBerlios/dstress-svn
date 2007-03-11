// $HeadURL$
// $Date$
// $Author$

// @author@	Lionello Lunesu <lio@lunesu.remove.com>
// @date@	2007-02-16
// @uri@	http://www.digitalmars.com/webnews/newsgroups.php?group=digitalmars.D&article_id=48917
// @desc@	Re: Compile time function execution...

module dstress.compile.c.const_46_A;

bool func() {
	return true;
}

static if (!func()) {
	static assert(0);
}
