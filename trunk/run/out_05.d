
int status;

class MyClass{
	int x=2;
}

void check(out MyClass c){
	assert(c is null);
}

int main(){
	MyClass c = new MyClass();
	assert(!(c is null));
	check(c);
	assert(c is null);
	return 0;
}
