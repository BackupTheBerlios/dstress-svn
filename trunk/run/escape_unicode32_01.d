int main(){
	wchar[] string="\U000002AF1";
	assert(string.length==2);
	assert(string[0]==0x2AF);
	assert(string[1]=='1');
	return 0;
}
