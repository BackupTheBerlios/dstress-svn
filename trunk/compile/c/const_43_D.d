// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <clugdbug@yahoo.com.au>
// @date@	2007-03-02
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1016
// @desc@	[Issue 1016] CTFE fails with recursive functions

module dstress.compile.c.const_43_D;

bool bar(int i){
	bool state = false;
	if(i > 10){
		state = true;
	}
	return state;
}

static assert(bar(11));
