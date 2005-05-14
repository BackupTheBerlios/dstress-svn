/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_38;

int main(){
	TypeInfo ti = typeid(long[]);
	assert(!(ti is null));
	assert(ti);
	assert(ti.tsize==(long[]).sizeof);
	assert(ti.toString()=="long[]");

	TypeInfo_Array ta = ast(TypeInfo_Array) ti;
	assert(!(ta is null));
	assert(ta);
	assert(ta.tsize==(long[]).sizeof);
	assert(ta.toString()=="long[]");

	return 0;
}
