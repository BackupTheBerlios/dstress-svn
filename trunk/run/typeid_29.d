/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_28;

int main(){
	TypeInfo ti = typeid(ushort[]);
	assert(!(ti is null));
	assert(ti.toString()=="ushort[]");
	return 0;
}
