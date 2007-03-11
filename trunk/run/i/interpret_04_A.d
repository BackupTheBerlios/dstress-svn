// $HeadURL$
// $Date$
// $Author$

// @author@	Frits van Bommel <fvbommel@wxs.nl>
// @date@	2007-02-15
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=968
// @desc@	[Issue 968] ICE on compile-time execution

module dstress.run.i.interpret_04_A;

real test(){
	return 0.0;
}

int main(){
	static x = test();
	if(0.0 == x){
		return 0;
	}
	assert(0);
}
