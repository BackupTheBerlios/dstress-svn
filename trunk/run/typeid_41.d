/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_41;

int main(){
	TypeInfo ti = typeid(ulong[]);
	assert(!(ti is null));
	assert(ti);
	assert(ti.tsize==(ulong[]).sizeof);
	assert(ti.toString()=="ulong[]");

	TypeInfo_Array ta = cast(TypeInfo_Array) ti;
	assert(!(ta is null));
	assert(ta);
	assert(ta.tsize==(ulong[]).sizeof);
	assert(ta.toString()=="ulong[]");

	return 0;
}
