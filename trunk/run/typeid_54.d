/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_54;

int main(){
	TypeInfo ti = typeid(ireal*);
	assert(!(ti is null));
	assert(ti.toString()=="ireal*");
	return 0;
}
