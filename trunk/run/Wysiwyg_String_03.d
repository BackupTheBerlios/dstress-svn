int main(){
	char[] string=r"\v";
	assert(string.length==2);
	assert(string[0]=='\\');
	assert(string[1]=='v');
	return 0;
}
