int main(){
	char[] string=r"\f";
	assert(string.length==2);
	assert(string[0]=='\\');
	assert(string[1]=='f');
	return 0;
}