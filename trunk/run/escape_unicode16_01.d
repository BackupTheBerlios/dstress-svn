int main(){
	wchar[] string="\u02AF1";
	assert(string.length==2);
	assert(string[0]==0x2AF);
	assert(string[1]=='1');
	return 0;
}
