/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_48;

int main(){
	TypeInfo ti = typeid(real*);
	assert(!(ti is null));
	return 0;
}
