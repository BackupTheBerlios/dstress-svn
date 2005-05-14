/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_23;

int main(){
	TypeInfo ti = typeid(ubyte[]);
	assert(!(ti is null));
	assert(ti);
	assert(ti.tsize==(ubyte[]).sizeof);
	assert(ti.toString()=="ubyte[]");

	TypeInfo_Array ta = cast(TypeInfo_Array) ti;
	assert(!(ta is null));
	assert(ta);
	assert(ta.tsize==(ubyte[]).sizeof);
	assert(ta.toString()=="ubyte[]");

	return 0;
}
