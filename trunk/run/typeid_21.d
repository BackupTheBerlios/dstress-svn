/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_19;

int main(){
	TypeInfo ti = typeid(byte*);
	assert(!(ti is null));
	assert(ti.toString()=="byte*");
	return 0;
}
