/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_17;

int main(){
	TypeInfo ti = typeid(bool[]);
	assert(!(ti is null));
	assert(ti);
	assert(ti.tsize==(bool[]).sizeof);
	assert(ti.toString()=="bool[]");
	
	TypeInfo_Array ta = cast(TypeInfo_Array) ti;
	assert(!(ta is null));
	assert(ta);
	assert(ta.tsize==(bool[]).sizeof);
	assert(ta.toString()=="bool[]");

	return 0;
}
