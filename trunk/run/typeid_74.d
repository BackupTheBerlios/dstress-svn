/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_74;

struct MyClass{
	int dummy;
}

int main(){
	TypeInfo ti = typeid(MyClass*);
	assert(!(ti is null));
	assert(ti.toString()=="MyClass*");
	return 0;
}
