class MyClass{
}

int main(){
	TypeInfo ti = typeid(MyClass[][]);
	assert(ti!=null);
	
	return 0;
}
