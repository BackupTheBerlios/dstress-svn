/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_40;

int main(){
	TypeInfo ti = typeid(ulong);
	assert(!(ti is null));
	return 0;
}