class MyClass{
}

int main(){
	TypeInfo ti = typeid(MyClass[][]);
	assert(!(ti is null));
	
	return 0;
}
