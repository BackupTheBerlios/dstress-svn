// $HeadURL$
// $Date$
// $Author$

// @author@	 Frits van Bommel <fvbommel@wxs.nl>
// @date@	2007-02-06
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=932
// @desc@	[Issue 932] static foreach in second template instantiation uses wrong tupleof

module dstress.run.f.foreach_38_A;

void Fields(C)(){
	foreach(i, a; typeof(C.tupleof)){
		static assert(is(typeof(a) == typeof(C.tupleof)[i]));
	}
}

struct MyStruct1 {
	int afield;
}

struct MyStruct2 {
	real afield;
}

int main(){
	Fields!(MyStruct1);
	Fields!(MyStruct2);
	return 0;
}
