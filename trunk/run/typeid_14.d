/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_14;

int main(){
	TypeInfo ti = typeid(void[]);
	assert(!(ti is null));
	assert(ti.toString()=="void[]");
	return 0;
}
