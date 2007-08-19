// $HeadURL$
// $Date$
// $Author$

// @author@	<dhaffey@gmail.com>
// @date@	2007-05-31
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1151
// @desc@	[Issue 1151] Final template class w/ constructor and invariant causes compile error

module dstress.run.f.final_13_D;

final class Foo{
	this(){
	}

	invariant() {
	}
}

int main(){
	auto f = new Foo();
	assert(f);

	return 0;
}
