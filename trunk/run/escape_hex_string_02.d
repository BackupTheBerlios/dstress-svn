// $HeadURL$
// $Date$
// $Author$

module dstress.run.escape_hex__string_02;

int main(){
	char[] string=x" 1 2
a
	f";
	assert(string.length==2);
	assert(string[0]==0x12);
	assert(string[1]==0xAF);
	return 0;
}
