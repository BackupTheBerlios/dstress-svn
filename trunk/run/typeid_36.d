/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_36;

int main(){
	TypeInfo ti = typeid(uint*);
	assert(!(ti is null));
	assert(ti.tsize==(uint*).sizeof);
	assert(ti.toString()=="uint*");
	return 0;
}
