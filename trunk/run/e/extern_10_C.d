// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kühne <thomas-dloop@kuehne.cn>
// @date@	2007-02-13
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=957
// @desc@	[Issue 957] linkage attributes for function level declarations are ignored

module dstress.run.e.extern_10_C;

extern(C) long foo(int a, int b){
	return (a + 1) * b;
}

extern(C) long function(int, int) bar;

int main(){
	bar = &foo;

	if(20 != bar(3, 5)){
		assert(0);
	}

	return 0;
}
