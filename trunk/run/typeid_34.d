/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_34;

int main(){
	TypeInfo ti = typeid(uint);
	assert(!(ti is null));
	assert(ti.toString()=="uint");
	return 0;
}
