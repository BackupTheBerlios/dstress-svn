int main(){
	char[] string=r"\x";
	assert(string.length==2);
	assert(string[0]=='\\');
	assert(string[1]=='x');
	return 0;
}