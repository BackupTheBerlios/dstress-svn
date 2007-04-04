// $HeadURL$
// $Date$
// $Author$

// @author@	Mark Guidarelli <guido@grumpy-cat.com>
// @date@	2007-03-31
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1088
// @desc@	[Issue 1088] structs allocated with a struct allocator will not have default initializer values assigned

module dstress.run.s.struct_initialization_10_B;

struct S{
	new(size_t size){
		return (new void[size]).ptr;
	}

	int i = 0x12_AB_CD_00;
}

int main(){
	S s;
	if(0x12_AB_CD_00 != s.i){
		assert(0);
	}

	return 0;
}
