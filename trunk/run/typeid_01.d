// $HeadURL$
// $Date$
// $Author$

module dstress.run.typeid_01;

class MyClass{
}

int main(){
	TypeInfo ti = typeid(MyClass[]);
	assert(!(ti is null));
	
	return 0;
}
