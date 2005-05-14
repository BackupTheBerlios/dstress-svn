/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_17;

int main(){
	TypeInfo ti = typeid(bit[]);
	assert(!(ti is null));
	assert(ti);
	assert(ti.tsize==(bit[]).sizeof);
	assert(ti.toString()=="bit[]");
	
	TypeInfo_Array ta = cast(TypeInfo_Array) ti;
	assert(!(ta is null));
	assert(ta);
	assert(ta.tsize==(bit[]).sizeof);
	assert(ta.toString()=="bit[]");

	return 0;
}
