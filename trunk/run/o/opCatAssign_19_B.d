// $HeadURL$
// $Date$
// $Author$

// @author@	<lio@lunesu.com>
// @date@	2006-04-20
// @uri@	news:bug-111-3@http.d.puremagic.com/bugzilla/

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
