/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_33;

int main(){
	TypeInfo ti = typeid(int*);
	assert(!(ti is null));
	return 0;
}
