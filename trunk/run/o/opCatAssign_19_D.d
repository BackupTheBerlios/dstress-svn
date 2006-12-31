// $HeadURL$
// $Date$
// $Author$

// @author@	<lio@lunesu.com>
// @date@	2006-04-20
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=111

module dstress.run.o.opCatAssign_19_D;

int main(){
	char[] a = "\U00091234";
	char[] b;

	b ~= '\U00091234';

	if(a != b){
		assert(0);
	}

	return 0;
}
