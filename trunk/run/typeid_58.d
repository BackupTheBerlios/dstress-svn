/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_58;

int main(){
	TypeInfo ti = typeid(cdouble*);
	assert(!(ti is null));
	return 0;
}
