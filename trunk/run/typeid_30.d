/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_30;

int main(){
	TypeInfo ti = typeid(ushort*);
	assert(!(ti is null));
	return 0;
}
