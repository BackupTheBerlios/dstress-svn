// $HeadURL$
// $Date$
// $Author$

// @author@	Matti Niemenmaa <deewiant@gmail.com>
// @date@	2006-12-30
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=777
// @desc@	[Issue 777] -inline: assert() with a non-constant message causes code to not compile

module dstress.run.a.assert_18_D;

int main(char[][] args){
	void foo(){
		assert(true, args[0]);
	}
	foo();
	return 0;
}

