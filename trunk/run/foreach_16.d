int main(){
	char[] string;
	string.length=4;
	string[0] = 0xF0;
	string[1] = 0x9D;
	string[2] = 0x83;
	string[3] = 0x93;

	int count=0;
	wchar tmp;
	foreach(wchar value ; string){
		tmp=value;
		count++;
	}
	assert(count==1);
	assert(tmp==0x01D0D3);

	return 0;
}
