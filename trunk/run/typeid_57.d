/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_57;

int main(){
	TypeInfo ti = typeid(cdouble);
	assert(!(ti is null));
	return 0;
}
