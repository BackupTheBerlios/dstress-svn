int main(){
	char[] string=`\b`;
	assert(string.length==2);
	assert(string[0]=='\\');
	assert(string[1]=='b');
	return 0;
}