/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_82;

enum MyEnum{
	A,
	B
}

int main(){
	TypeInfo t1 = typeid(typeof(MyEnum.A));
	assert(!(t1 is null));
	TypeInfo t2 = typeid(MyEnum);
	assert(!(t2 is null));
	assert(t1 === t2);
	return 0;
}
