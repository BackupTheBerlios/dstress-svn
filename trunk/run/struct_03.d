
int status;

struct MyStruct{
	int check(){
		status++;
		return 2;
	}	
}

int main(){
	MyStruct m;
	assert( m.check() == 2 );
	assert( status == 1 );
	return 0;
}
