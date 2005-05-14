// $HeadURL$
// $Date$
// $Author$

module dstress.run.typeid_02;

class MyClass{
}

int main(){
	TypeInfo ti = typeid(MyClass[][]);
	assert(!(ti is null));
	assert(ti);
	assert(ti.tsize==(MyClass[][]).sizeof);
	assert(ti.toString=="dstress.run.typeid_02.MyClass[][]");
	
	TypeInfo_Array ta = cast(TypeInfo_Array) ti;
	assert(!(ta is null));
	assert(ta);
	assert(ta.tsize==(MyClass[][]).sizeof);
	assert(ta.toString=="dstress.run.typeid_02.MyClass[][]");

	return 0;
}
