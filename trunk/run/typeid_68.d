/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_68;

int main(){
	TypeInfo ti = typeid(dchar[]);
	assert(!(ti is null));
	assert(ti);
	assert(ti.tsize==(dchar[]).sizeof);
	assert(ti.toString()=="dchar[]");

	TypeInfo_Array ta = cast(TypeInfo_Array) ti;
	assert(!(ta is null));
	assert(ta);
	assert(ta.tsize==(dchar[]).sizeof);
	assert(ta.toString()=="dchar[]");

	return 0;
}
