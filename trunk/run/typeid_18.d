/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_18;

int main(){
	TypeInfo ti = typeid(bit*);
	assert(!(ti is null));
	return 0;
}
