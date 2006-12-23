// $HeadURL$
// $Date$
// $Author$

// @author@	sa <someanon@yahoo.com>
// @date@	2006-12-17
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=695
// @desc@	internal compiler error: Aborted

module dstress.compile.b.bug_d_irstate_244_B;

class String{
	int indexOf(){
	test:
		for(; ;){
			continue test;
			return 0;
		}
	}
}
