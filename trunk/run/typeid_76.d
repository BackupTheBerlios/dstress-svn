/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_76;

enum MyEnum{
	A,
	B
}

int main(){
	TypeInfo ti = typeid(MyEnum[]);
	assert(!(ti is null));
	return 0;
}