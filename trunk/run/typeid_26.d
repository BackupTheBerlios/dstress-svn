/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_26;

int main(){
	TypeInfo ti = typeid(short[]);
	assert(!(ti is null));
	assert(ti);
	assert(ti.tsize==(short[]).sizeof);
	assert(ti.toString()=="short[]");

	TypeInfo_Array ta = cast(TypeInfo_Array) ti;
	assert(!(ta is null));
	assert(ta);
	assert(ta.tsize==(short[]).sizeof);
	assert(ta.toString()=="short[]");

	return 0;
}
