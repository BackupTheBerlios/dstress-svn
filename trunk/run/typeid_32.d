/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_32;

int main(){
	TypeInfo ti = typeid(int[]);
	assert(!(ti is null));
	return 0;
}
