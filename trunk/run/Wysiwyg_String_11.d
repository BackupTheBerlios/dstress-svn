int main(){
	char[] string=r"\t";
	assert(string.length==2);
	assert(string[0]=='\\');
	assert(string[1]=='t');
	return 0;
}
