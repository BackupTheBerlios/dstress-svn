/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_36;

int main(){
	TypeInfo ti = typeid(uint*);
	assert(!(ti is null));
	return 0;
}
