int main(){
	char[] string=`\r`;
	assert(string.length==2);
	assert(string[0]=='\\');
	assert(string[1]=='r');
	return 0;
}
