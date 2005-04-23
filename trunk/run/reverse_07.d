// $HeadURL$
// $Date$
// $Author$

module dstress.run.reverse_07;

int main(){
	dchar[] a;
	dchar[] r;

	a = "abcd";
	a = a.dup;
	r = a.reverse;
	assert(r=="dcba");
	assert(r.ptr==a.ptr);

	a = "-\U000000A1\U00000901\U0000FFEE\U00010000\U000FFFFD_";
	a = a.dup;
	r = a.reverse;
	assert(r == "_\U000FFFFD\U00010000\U0000FFEE\U00000901\U000000A1-");
	assert(a.ptr==r.ptr);

	return 0;
}
