// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.typeid_87;

class MyClass{
}

int main(){
	TypeInfo ti = typeid(MyClass);
	if(ti is null){
		assert(0);
	}
	assert(ti);
	if(ti.tsize != (MyClass).sizeof){
		assert(0);
	}
	if(MyClass.mangleof != "C7dstress3run1t9typeid_877MyClass"){
		assert(0);
	}
	if(ti.toString() != "dstress.run.t.typeid_87.MyClass"){
		assert(0);
	}
	return 0;
}
