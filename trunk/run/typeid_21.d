/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_19;

int main(){
	TypeInfo ti = typeid(byte*);
	assert(!(ti is null));
	return 0;
}
