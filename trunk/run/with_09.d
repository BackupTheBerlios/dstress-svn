struct MyStruct{
	int test(){
		return 3;
	}
}

int test(){
	return 5;
}

int main(){
	MyStruct myStruct;
	with(myStruct){
		assert(test()==3);
	}
	return 0;
}
