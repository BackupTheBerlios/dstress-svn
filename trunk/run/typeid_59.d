/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_59;

int main(){
	TypeInfo ti = typeid(creal);
	assert(!(ti is null));
	return 0;
}
