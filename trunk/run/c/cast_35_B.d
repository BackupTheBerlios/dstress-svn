// $HeadURL$
// $Date$
// $Author$

// @author@	Matti Niemenmaa <deewiant@gmail.com>
// @date@	2007-04-05
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1097
// @desc@	[Issue 1097] Missing line number: casting array to array of different element size

module dstress.run.c.cast_35_B;

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
	try{
		test(args.length);
	}catch{
		return 0;
	}
	assert(0);
}
