// $HeadURL$
// $Date$
// $Author$

// @author@	<CppCoder@gmail.com>
// @date@	2006-05-02
// @uri@	news:bug-123-3@http.d.puremagic.com/bugzilla/

module dstress.run.l.length_10_C;

size_t intRes(){
	return 4;
}

static char[] foo = "abc123";

int main(){
	char c = foo[intRes() % $];

	if(c != '2'){
		assert(0);
	}

	return 0;
}
