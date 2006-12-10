// $HeadURL$
// $Date$
// $Author$

// @author@	Burton Radons <burton-radons@smocky.com>
// @date@	2006-12-07
// @uri@	news:bug-663-3@http.d.puremagic.com/issues/
// @desc@	[Issue 663] New: Slice assignment does not bounds check when it should

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.norun.o.opSliceAssign_04_A;

int main(char[][] args){
        auto test = new char [(args.length / 1000) + 2];

        test [] = 'a';
	if(test != "aa"){
		assert(0);
	}

        test = test [0 .. (args.length / 1000) + 1];
	if(test != "a"){
		assert(0);
	}

        test [0 .. 2] = 'b';

	return 0;
}

