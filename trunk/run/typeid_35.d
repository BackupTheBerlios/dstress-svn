/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_35;

int main(){
	TypeInfo ti = typeid(uint[]);
	assert(!(ti is null));
	assert(ti);
	assert(ti.tsize==(uint[]).sizeof);
	assert(ti.toString()=="uint[]");

	TypeInfo_Array ta = cast(TypeInfo_Array) ti;
	assert(!(ta is null));
	assert(ta);
	assert(ta.tsize==(uint[]).sizeof);
	assert(ta.toString()=="uint[]");

	return 0;
}
