/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_41;

int main(){
	TypeInfo ti = typeid(ulong[]);
	assert(!(ti is null));
	assert(ti.toString()=="ulong[]");
	return 0;
}
