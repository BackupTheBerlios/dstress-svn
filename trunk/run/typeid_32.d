/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_32;

int main(){
	TypeInfo ti = typeid(int[]);
	assert(!(ti is null));
	assert(ti.tsize==(int[]).sizeof);
	assert(ti.toString()=="int[]");
	return 0;
}
