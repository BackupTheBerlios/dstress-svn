int main(){
	char[] string=`\t`;
	assert(string.length==2);
	assert(string[0]=='\\');
	assert(string[1]=='t');
	return 0;
}
