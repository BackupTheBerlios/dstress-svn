
int status;

class MyClass{
	int x=2;
}

void check(out MyClass c){
	assert(c==null);
}

int main(){
	MyClass c = new MyClass();
	assert(c!=null);
	check(c);
	assert(c==null);
	return 0;
}
