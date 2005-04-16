/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_72;

struct MyStruct{
	int dummy;
}

int main(){
	TypeInfo ti = typeid(MyStruct*);
	assert(!(ti is null));
	assert(ti.tsize==(MyStruct*).sizeof);
	assert(ti.toString()=="dstress.run.typeid_72.MyStruct*");
	return 0;
}
