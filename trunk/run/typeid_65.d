/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_65;

int main(){
	TypeInfo ti = typeid(wchar[]);
	assert(!(ti is null));
	assert(ti);
	assert(ti.tsize==(wchar[]).sizeof);
	assert(ti.toString()=="wchar[]");

	TypeInfo_Array ta = cast(TypeInfo_Array) ti;
	assert(!(ta is null));
	assert(ta);
	assert(ta.tsize==(wchar[]).sizeof);
	assert(ta.toString()=="wchar[]");
	
	return 0;
}
