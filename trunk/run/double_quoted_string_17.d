// $HeadURL$
// $Date$
// $Author$

module dstress.run.double_quoted_string_17;

int main(){
	string a= "a" "b" "c";
	string b= \x61 "bc";
	assert(a==b);
	return 0;
}
