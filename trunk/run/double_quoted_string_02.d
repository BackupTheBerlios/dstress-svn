// $HeadURL$
// $Date$
// $Author$

module dstress.run.double_quoted_string_02;

int main(){
	char[] string="
	";
	assert(string.length==2);
	assert(string[0]=='\n');
	assert(string[1]=='\t');
	return 0;
}
