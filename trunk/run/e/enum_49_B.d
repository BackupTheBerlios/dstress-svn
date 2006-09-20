// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg@iname.com>
// @date@	2006-09-15
// @uri@	news:bug-349-3@http.d.puremagic.com/issues/
// @desc@	[Issue 349] New: Function matching with enums is erratic

module dstress.run.e.enum_49_B;

enum E : uint{
	A = 1
}

uint foo(E e){
	return e + 1u;
}

uint foo(uint u){
	return u;
}

int main(){
	if(foo(1u) != 1){
		assert(0);
	}

	return 0;
}
