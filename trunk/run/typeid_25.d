/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_25;

int main(){
	TypeInfo ti = typeid(short);
	assert(!(ti is null));
	assert(ti.toString()=="short");
	return 0;
}
