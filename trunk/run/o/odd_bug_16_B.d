// $HeadURL$
// $Date$
// $Author$

// @author@	Carlos Santander B. <csantander619@gmail.com>
// @date@	2007-04-14
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1145
// @desc@	[Issue 1145] bad codegen with ulong+float

module dstress.run.o.odd_bug_16_B;

ulong foo (){
	return cast(ulong) (1176576512UL + -2.0f);
}

int main(){
	if(foo() != 1176576510){
		assert(0);
	}
	return 0;
}
