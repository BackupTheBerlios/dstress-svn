

int main(){
	char[] array="\xE2\x89\xA0";
	int count=0;
	assert(count==0);
	foreach(int index, dchar obj; array){
		assert(index==0);
		assert(obj==0x2260);
		count++;
	}
	assert(count==1);
	return 0;
}
