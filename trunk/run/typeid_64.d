/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_64;

int main(){
	TypeInfo ti = typeid(wchar);
	assert(!(ti is null));
	return 0;
}
