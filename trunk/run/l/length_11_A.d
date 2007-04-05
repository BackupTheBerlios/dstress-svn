// $HeadURL$
// $Date$
// $Author$

// @author@	Nick Atamas <nick.atamas@gmail.com>
// @date@	2007-02-04
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=929
// @desc@	[Issue 929] Resizing array of associative arrays (uint[char[]][]) causes infinite loop / hang

module dstress.run.l.length_11_A;

int main(){
	uint[char[]][] fractal;
	fractal.length = 10;
	if(10 != fractal.length){
		assert(0);
	}

	return 0;
}
