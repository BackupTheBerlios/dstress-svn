// $HeadURL$
// $Date$
// $Author$

module dstress.run.double_quoted_string_17;

int main(){
	char[] a= r"a" x"62" \x63;
	char[] b= \u0061 "b" \U00000063;
	assert(a==b);
	return 0;
}
