// $HeadURL$
// $Date$
// $Author$

// @author@	<fp@fpx.de>
// @date@	2002-01-14
// @uri@	http://gcc.gnu.org/bugzilla/show_bug.cgi?id=5380

module dstress.benchmark.gcc_5380;

int main (){
	char[] foo;
	for (int i=0; i<100000; i++) {
		foo ~= 's';
	}
	return 0;
}