// $HeadURL$
// $Date$
// $Author$

// @author@	Frits van Bommel <fvbommel@wxs.nl>
// @date@	2007-01-25
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=887
// @desc@	[Issue 887] TypeInfo does not correctly override opCmp, toHash

module dstress.run.t.typeid_91_D;

struct A{
}

struct B{
}

int main(){
	if(0 == typeid(A).opCmp(typeid(B))){
		assert(0);
	}
	return 0;
}
