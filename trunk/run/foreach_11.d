

int main(){
	char[] array="abc";
	int count=0;
	assert(count==0);
	foreach(char value; array){
		count++;
		if(count>-1){
			continue;
		}
		assert(0);
	}
	assert(count==3);
	return 0;
}
