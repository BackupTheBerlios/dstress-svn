/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_26;

int main(){
	TypeInfo ti = typeid(short[]);
	assert(!(ti is null));
	assert(ti.tsize==(short[]).sizeof);
	assert(ti.toString()=="short[]");
	return 0;
}
