// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg@iname.com>
// @date@	2006-09-15
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=349
// @desc@	[Issue 349] New: Function matching with enums is erratic

module dstress.run.e.enum_49_A;

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
	if(foo(E.A) != 2){
		assert(0);
	}

	return 0;
}
