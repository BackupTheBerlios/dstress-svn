/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_44;

int main(){
	TypeInfo ti = typeid(float*);
	assert(!(ti is null));
	return 0;
}
