// $HeadURL$
// $Date$
// $Author$

module dstress.run.double_quoted_string_05;

int main(){
	char[] string="\"";
	assert(string.length==1);
	assert(string[0]==0x22);
	return 0;
}
