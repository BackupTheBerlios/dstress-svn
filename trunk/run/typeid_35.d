/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_35;

int main(){
	TypeInfo ti = typeid(uint[]);
	assert(!(ti is null));
	return 0;
}
