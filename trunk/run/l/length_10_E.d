// $HeadURL$
// $Date$
// $Author$

// @author@	<CppCoder@gmail.com>
// @date@	2006-05-02
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=123

module dstress.run.l.length_10_E;

char[] foo = "abc123";

int main(){
	char c = foo[4 % $];

	if(c != '2'){
		assert(0);
	}

	return 0;
}
