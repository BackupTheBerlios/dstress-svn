// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.typeid_87;

class MyClass{
}

int main(){
	TypeInfo ti = typeid(MyClass);
	assert(!(ti is null));
	assert(ti);
	assert(ti.tsize==(MyClass).sizeof);
	assert(ti.toString()=="dstress.run.t.typeid_87.MyClass");
	return 0;
}
