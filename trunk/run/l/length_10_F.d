// $HeadURL$
// $Date$
// $Author$

// @author@	<CppCoder@gmail.com>
// @date@	2006-05-02
// @uri@	news:bug-123-3@http.d.puremagic.com/bugzilla/

module dstress.run.l.length_10_F;

const char[] foo = "abc123";

int main(){
	char c = foo[4 % $];

	if(c != '2'){
		assert(0);
	}

	return 0;
}
