int main(){
	char[] string=`\a`;
	assert(string.length==2);
	assert(string[0]=='\\');
	assert(string[1]=='a');
	return 0;
}
