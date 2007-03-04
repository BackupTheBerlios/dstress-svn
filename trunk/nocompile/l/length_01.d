// $HeadURL$
// $Date$
// $Author$

// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=950
// @desc@	[Issue 950] Missing filename and line number: conflict between implicit length in [...] and explicit length declared in the scope

// __DSTRESS_ELINE__ 19

module dstress.nocompile.l.length_01;

int main(){
	byte[3] array;
	array[0]=2;
	array[1]=4;
	array[2]=8;
	int length=1;
	assert(length-1==0);
	assert(array[length-1]==8);
	return 0;
}
