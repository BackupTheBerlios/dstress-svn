// $HeadURL$
// $Date$
// $Author$

module dstress.run.typeid_02;

class MyClass{
}

int main(){
	TypeInfo ti = typeid(MyClass[][]);
	if(ti is null){
		assert(0);
	}
	if(!ti){
		assert(0);
	}
	if(ti.tsize != (MyClass[][]).sizeof){
		assert(0);
	}
	if(ti.toString != "dstress.run.typeid_02.MyClass[][]"){
		assert(0);
	}
	
	TypeInfo_Array ta = cast(TypeInfo_Array) ti;
	if(ta is null){
		assert(0);
	}
	if(!ta){
		assert(0);
	}
	if(ta.tsize != (MyClass[][]).sizeof){
		assert(0);
	}
	if(ta.toString != "dstress.run.typeid_02.MyClass[][]"){
		assert(0);
	}

	return 0;
}
