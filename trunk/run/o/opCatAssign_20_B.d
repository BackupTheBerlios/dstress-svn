// $HeadURL$
// $Date$
// $Author$

// @author@	Kevin Bealer <kevinbealer@gmail.com>
// @date@	2006-12-22
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=720
// @desc@	[Issue 720] New: bug in array literal parsing with append

module dstress.run.o.opCatAssign_20_B;

int main(){
	int[2][] pos;
	pos ~= [7, 13];

	if(pos.length != 1){
		assert(0);
	}
	if(pos[0].length != 2){
		assert(0);
	}
	if(pos[0][0] != 7){
		assert(0);
	}
	if(pos[0][1] != 13){
		assert(0);
	}

	return 0;
}
