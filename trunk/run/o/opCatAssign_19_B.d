// $HeadURL$
// $Date$
// $Author$

// @author@	<lio@lunesu.com>
// @date@	2006-04-20
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=111

module dstress.run.o.opCatAssign_19_B;

int main(){
	char[] a = "\U00001234";
	char[] b;

	wchar x = '\U00001234';

	b ~= x;

	if(a != b){
		assert(0);
	}

	return 0;
}
