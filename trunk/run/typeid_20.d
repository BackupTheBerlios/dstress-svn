/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_20;

int main(){
	TypeInfo ti = typeid(byte[]);
	assert(!(ti is null));
	assert(ti);
	assert(ti.tsize==(byte[]).sizeof);
	assert(ti.toString()=="byte[]");

	TypeInfo_Array ta = cast(TypeInfo_Array) ti;
	assert(!(ta is null));
	assert(ta);
	assert(ta.tsize==(byte[]).sizeof);
	assert(ta.toString()=="byte[]");

	return 0;
}
