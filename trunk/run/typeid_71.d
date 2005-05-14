/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_71;

struct MyStruct{
	int dummy;
}

int main(){
	TypeInfo ti = typeid(MyStruct[]);
	assert(!(ti is null));
	assert(ti);
	assert(ti.tsize==(MyStruct[]).sizeof);
	assert(ti.toString()=="dstress.run.typeid_71.MyStruct[]");

	TypeInfo_Array ta = cast(TypeInfo_Array) ti;
	assert(!(ta is null));
	assert(ta);
	assert(ta.tsize==(MyStruct[]).sizeof);
	assert(ta.toString()=="dstress.run.typeid_71.MyStruct[]");	
	
	return 0;
}
