// $HeadURL$
// $Date$
// $Author$

module dstress.run.double_quoted_string_01;

int main(){
	char[] string="abc";
	assert(string.length==3);
	assert(string[0]=='a');
	assert(string[1]=='b');
	assert(string[2]=='c');
	return 0;
}
