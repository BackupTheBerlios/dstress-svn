/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_27;

int main(){
	TypeInfo ti = typeid(short*);
	assert(!(ti is null));
	assert(ti.toString()=="short*");
	return 0;
}
