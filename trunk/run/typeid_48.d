/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_48;

int main(){
	TypeInfo ti = typeid(real*);
	assert(!(ti is null));
	assert(ti.tsize==(real*).sizeof);
	assert(ti.toString()=="real*");
	return 0;
}
