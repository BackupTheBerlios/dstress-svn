// $HeadURL$
// $Date$
// $Author$

// @author@	<lio@lunesu.com>
// @date@	2006-04-20
// @uri@	news:bug-111-3@http.d.puremagic.com/bugzilla/

module dstress.run.o.opCatAssign_19_A;

int main(){
	char[] a = "\U00091234";
	char[] b;

	dchar x = '\U00091234';

	b ~= x;

	if(a != b){
		assert(0);
	}

	return 0;
}
