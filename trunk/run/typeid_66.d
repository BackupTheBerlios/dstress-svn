/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_66;

int main(){
	TypeInfo ti = typeid(wchar*);
	assert(!(ti is null));
	assert(ti.tsize==(wchar*).sizeof);
	assert(ti.toString()=="wchar*");
	return 0;
}
