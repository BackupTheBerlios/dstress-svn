// $HeadURL$
// $Date$
// $Author$

module dstress.run.escape_unicode32_02;

int main(){
	char[] string="\U000002AF1";
	assert(string.length==3);
	assert(string[0]==0xCA);
	assert(string[1]==0xAF);
	assert(string[2]=='1');
	return 0;
}
