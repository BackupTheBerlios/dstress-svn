/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_53;

int main(){
	TypeInfo ti = typeid(ireal);
	assert(!(ti is null));
	return 0;
}
