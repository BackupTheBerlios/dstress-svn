// $HeadURL$
// $Date$
// $Author$

module dstress.run.double_quoted_string_17;

int main(){
	char[] a= "a" "b" "c";
	char[] b= \x61 "bc";
	assert(a==b);
	return 0;
}
