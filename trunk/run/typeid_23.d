/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_23;

int main(){
	TypeInfo ti = typeid(ubyte[]);
	assert(!(ti is null));
	assert(ti.tsize==(ubyte[]).sizeof);
	assert(ti.toString()=="ubyte");
	return 0;
}
