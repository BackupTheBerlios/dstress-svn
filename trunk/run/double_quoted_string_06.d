// $HeadURL$
// $Date$
// $Author$

module dstress.run.double_quoted_string_06;

int main(){
	char[] string="\'";
	assert(string.length==1);
	assert(string[0]=='\'');
	return 0;
}
