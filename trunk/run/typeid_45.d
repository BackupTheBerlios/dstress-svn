/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_45;

int main(){
	TypeInfo ti = typeid(double);
	assert(!(ti is null));
	assert(ti.tsize==(double).sizeof);
	assert(ti.toString()=="double");
	return 0;
}
