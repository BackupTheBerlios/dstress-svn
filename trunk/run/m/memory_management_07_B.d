// $HeadURL$
// $Date$
// $Author$

// @author@	<david@acz.org>
// @date@	2007-11-12
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1666
// @desc@	[Issue 1666] New: 64-bit gdc programs cannot allocate large arrays

module dstress.run.m.memory_management_07_B;

int main(char[][] args){
	ubyte x[];
	size_t len = 1 << 29;

	try{
		x.length = len;
	}catch(Exception e){
		// "out of memory" Exception
		return 0;
	}

	if(len != x.length){
		assert(0);
	}
	
	// try to defeat "smart" cheaters
	size_t step = 4096 - args.length;
	for(size_t i = 0; i < len; i += step){
		x[i] = i & 0xFF;
	}
	
	step = 4096 - ((args[0].length / 1000 + 1) % 13);
	for(size_t i = 0; i < len; i += step){
		if((i & 0xFF) != x[i]){
			assert(0);
		}
	}

	return 0;
}
