/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_75;

enum MyEnum{
	A,
	B
}

int main(){
	TypeInfo ti = typeid(MyEnum);
	assert(!(ti is null));
	assert(ti.tsize==(MyEnum).sizeof);
	assert(ti.toString()=="MyEnum");
	return 0;
}
