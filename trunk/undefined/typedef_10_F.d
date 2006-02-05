// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-12-12
// @uri@	news:dnjnqe$16sv$1@digitaldaemon.com

module dstress.undefined.typedef_10_F;

typedef int Int;

int main() {
	Int i;
	long l;

	static assert (is(typeof(i + l) == long));
}
