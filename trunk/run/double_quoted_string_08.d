// $HeadURL$
// $Date$
// $Author$

module dstress.run.double_quoted_string_08;

int main(){
	char[] string="\a";
	assert(string.length==1);
	assert(string[0]==0x07);
	return 0;
}
