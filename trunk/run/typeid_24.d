/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_24;

int main(){
	TypeInfo ti = typeid(ubyte*);
	assert(!(ti is null));
	assert(ti.toString()=="byte*");
	return 0;
}
