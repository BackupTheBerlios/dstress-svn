int main(){
	char[] string=x"12af";
	assert(string.length==2);
	assert(string[0]==0x12);
	assert(string[1]==0xAF);
	return 0;
}
