// $HeadURL$
// $Date$
// $Author$

// @author@	Matti Niemenmaa <deewiant@gmail.com>
// @date@	2007-04-05
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1097
// @desc@	[Issue 1097] Missing line number: casting array to array of different element size

module dstress.run.c.cast_35_C;

align(1) struct Big{
	short a;
	byte b;
}

align(1) struct Small{
	short a;
}

size_t test(int i){
	Big[] b = new Big[i];
	Small[] s = cast(Small[]) b;
	return s.length;
}

int main(char[][] args){
	if(3 != test(args.length + 1)){
		assert(0);
	}
	return 0;
}
