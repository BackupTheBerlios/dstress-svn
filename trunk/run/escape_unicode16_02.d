int main(){
	char[] string="\u02AF1";
	assert(string.length==3);
	assert(string[0]==0xCA);
	assert(string[1]==0xAF);
	assert(string[2]=='1');
	return 0;
}
