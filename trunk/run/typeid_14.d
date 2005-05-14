/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_14;

int main(){
	TypeInfo ti = typeid(void[]);
	assert(!(ti is null));
	assert(ti);
	assert(ti.tsize==(void[]).sizeof);
	assert(ti.toString()=="void[]");

	TypeInfo_Array ta = cast(TypeInfo_Array) ti;
	assert(!(ta is null));
	assert(ta);
	assert(ta.tsize==(void[]).sizeof);
	assert(ta.toString()=="void[]");

	return 0;
}
