/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_13;

int main(){
	TypeInfo ti = typeid(void);
	assert(!(ti is null));
	assert(ti.tsize == void.sizeof);
	assert(ti.toString()=="void");
	return 0;
}
