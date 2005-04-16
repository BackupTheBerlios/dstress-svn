/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_73;

struct MyClass{
	int dummy;
}

int main(){
	TypeInfo ti = typeid(MyClass);
	assert(!(ti is null));
	assert(ti.tsize==(MyClass).sizeof);
	assert(ti.toString()=="dstress.run.typeid_73.MyClass");
	return 0;
}
