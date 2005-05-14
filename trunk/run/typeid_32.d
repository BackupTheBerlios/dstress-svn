/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_32;

int main(){
	TypeInfo ti = typeid(int[]);
	assert(!(ti is null));
	assert(ti);
	assert(ti.tsize==(int[]).sizeof);
	assert(ti.toString()=="int[]");

	TypeInfo_Array ta = cast(TypeInfo_Array) ti;
	assert(!(ta is null));
	assert(ta);
	assert(ta.tsize==(int[]).sizeof);
	assert(ta.toString()=="int[]");

	return 0;
}
