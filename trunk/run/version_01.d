
version = MyVersion;

int main(){
	int i;
	version(MyVersion){
		i++;
	}
	assert(i == 1);
	return 0;
}
