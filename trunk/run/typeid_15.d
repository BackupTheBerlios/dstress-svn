/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_15;

int main(){
	TypeInfo ti = typeid(void*);
	assert(!(ti is null));
	return 0;
}
