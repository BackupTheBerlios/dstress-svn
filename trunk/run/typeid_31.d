/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_31;

int main(){
	TypeInfo ti = typeid(int);
	assert(!(ti is null));
	return 0;
}
