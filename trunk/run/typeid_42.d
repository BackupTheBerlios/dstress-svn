/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_42;

int main(){
	TypeInfo ti = typeid(ulong*);
	assert(!(ti is null));
	assert(ti.tsize==(ulong*).sizeof);
	assert(ti.toString()=="ulong*");
	return 0;
}
