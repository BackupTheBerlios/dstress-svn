/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_63;

int main(){
	TypeInfo ti = typeid(char*);
	assert(!(ti is null));
	return 0;
}
