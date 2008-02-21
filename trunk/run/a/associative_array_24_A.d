// $HeadURL$
// $Date$
// $Author$

// @author@	<d@brian.codekitchen.net>
// @date@	2007-04-27
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1191
// @desc@	[Issue 1191] New: multidimensional associative array assignment doesn't behave as with DMD

module dstress.run.a.associative_array_24_A;

int main(){
	int stuff[char[]][char[]];
	stuff["first"]["second"] = 5;
	if(1 != stuff.length){
		assert(0);
	}
	if(1 != stuff["first"].length){
		assert(0);
	}
	if(5 != stuff["first"]["second"]){
		assert(0);
	}

	return 0;
}
