/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_67;

int main(){
	TypeInfo ti = typeid(dchar);
	assert(!(ti is null));
	assert(ti.toString()=="dchar");
	return 0;
}
