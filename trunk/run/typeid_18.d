/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_18;

int main(){
	TypeInfo ti = typeid(bit*);
	assert(!(ti is null));
	assert(ti.tsize==(bit*).sizeof);
	assert(ti.toString()=="bit*");
	return 0;
}
