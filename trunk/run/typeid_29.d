/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_28;

int main(){
	TypeInfo ti = typeid(ushort[]);
	assert(!(ti is null));
	assert(ti);
	assert(ti.tsize==(ushort[]).sizeof);
	assert(ti.toString()=="ushort[]");

	TypeInfo_Array ta = cast(TypeInfo_Array) ti;
	assert(!(ta is null));
	assert(ta);
	assert(ta.tsize==(ushort[]).sizeof);
	assert(ta.toString()=="ushort[]");

	return 0;
}
