// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <clugdbug@yahoo.com.au>
// @date@	2006-05-30
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=165
// @desc@	[Issue 165] type inference fails with sizeof and circular imports

// __DSTRESS_DFLAGS__ compile/c/const_42_A.d

module /*dstress.*/compile.c.const_42_B;
import /*dstress.*/compile.c.const_42_A;

struct dog {
	wolf donkey;
	struct sheep {
		char pig;
	}
}

const X = dog.sheep.pig.sizeof;

static assert(is(typeof(X) == typeof(char.sizeof)));
static assert(X == char.sizeof);
