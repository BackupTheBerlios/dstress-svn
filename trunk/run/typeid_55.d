/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_55;

int main(){
	TypeInfo ti = typeid(cfloat);
	assert(!(ti is null));
	assert(ti.toString()=="cloat");
	return 0;
}
