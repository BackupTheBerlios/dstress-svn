// $HeadURL$
// $Date$
// $Author$

module dstress.run.double_quoted_string_18;

int main(){
	string a= r"a" x"62" \x63;
	string b= \u0061 "b" \U00000063;
	assert(a==b);
	return 0;
}
