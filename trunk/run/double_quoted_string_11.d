// $HeadURL$
// $Date$
// $Author$

module dstress.run.double_quoted_string_11;

int main(){
	char[] string="\v";
	assert(string.length==1);
	assert(string[0]==0x0B);
	return 0;
}
