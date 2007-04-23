// $HeadURL$
// $Date$
// $Author$

// @author@	<stephan.bergmann@sun.com>
// @date@	2005-01-28
// @uri@	http://gcc.gnu.org/bugzilla/show_bug.cgi?id=19672

module dstress.benchmark.gcc_19672;

int compare(char * p1, int n1, char * p2, int n2) {
	char * q1 = p1 + n1;
	char * q2 = p2 + n2;
	while (p1 < q1 && p2 < q2) {
		int n = *--q1 - *--q2;
		if (n) {
			return n;
		}
	}
	return n1 - n2;
}

int main(){
	char str[1000];
	int i;
	for (i = 0; i < 1000000; ++i) {
		compare(str.ptr, 1000, str.ptr, 1000);
	}
	return 0;
}
