/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_44;

int main(){
	TypeInfo ti = typeid(float*);
	assert(!(ti is null));
	assert(ti.tsize==(float*).sizeof);
	assert(ti.toString()=="float*");
	return 0;
}
