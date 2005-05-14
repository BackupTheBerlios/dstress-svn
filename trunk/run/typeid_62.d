/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_62;

int main(){
	TypeInfo ti = typeid(char[]);
	assert(!(ti is null));
	assert(ti);
	assert(ti.tsize==(char[]).sizeof);
	assert(ti.toString()=="char[]");

	TypeInfo_Array ta = cast(TypeInfo_Array) ti;
	assert(!(ta is null));
	assert(ta);
	assert(ta.tsize==(char[]).sizeof);
	assert(ta.toString()=="char[]");

	return 0;
}
