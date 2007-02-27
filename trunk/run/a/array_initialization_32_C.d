// $HeadURL$
// $Date$
// $Author$

// @author@	Dave <godaves@yahoo.com>
// @date@	2007-01-01
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=783
// @desc@	[Issue 783] Cannot use an array w/ const or variable index as new[] size argument.

module dstress.run.a.array_initialization_32_C;

const size_t[] arr = [ 1, 2 , 3 ];

const size_t i = 2;

int main(){
	int[] ar2;
	ar2 = new int[arr[i]];

	if(3 != arr.length){
		assert(0);
	}

	return 0;
}
