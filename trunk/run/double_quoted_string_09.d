// $HeadURL$
// $Date$
// $Author$

module dstress.run.double_quoted_string_09;

int main(){
	char[] string="\b";
	assert(string.length==1);
	assert(string[0]==0x08);
	return 0;
}
