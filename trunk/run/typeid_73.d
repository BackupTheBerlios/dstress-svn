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
	return 0;
}
