/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_50;

int main(){
	TypeInfo ti = typeid(ifloat*);
	assert(!(ti is null));
	assert(ti.tsize==(ifloat*).sizeof);
	assert(ti.toString()=="ifloat*");
	return 0;
}
