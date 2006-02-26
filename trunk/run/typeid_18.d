/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_18;

int main(){
	TypeInfo ti = typeid(bool*);
	assert(!(ti is null));
	assert(ti.tsize==(bool*).sizeof);
	assert(ti.toString()=="bool*");
	return 0;
}
