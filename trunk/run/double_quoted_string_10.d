// $HeadURL$
// $Date$
// $Author$

module dstress.run.double_quoted_string_10;

int main(){
	char[] string="\f";
	assert(string.length==1);
	assert(string[0]==0x0C);
	return 0;
}
