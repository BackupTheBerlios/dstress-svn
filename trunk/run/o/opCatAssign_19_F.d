// $HeadURL$
// $Date$
// $Author$

// @author@	<lio@lunesu.com>
// @date@	2006-04-20
// @uri@	news:bug-111-3@http.d.puremagic.com/bugzilla/

module dstress.run.o.opCatAssign_19_F;

int main(){
	char[] a = "\U00091234";
	char[] b;

	b ~= "\U00091234";

	if(a != b){
		assert(0);
	}

	return 0;
}
