

int main(){
	char[] array="abc";
	int count=0;
	assert(count==0);
	foreach(char value; array){
		count++;
		if(value=='b'){
			break;
		}
	}
	assert(count==2);
	return 0;
}
