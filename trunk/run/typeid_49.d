/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_49;

int main(){
	TypeInfo ti = typeid(ifloat);
	assert(!(ti is null));
	return 0;
}
