/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_78;

union MyUnion{
	int i;
	byte b;
}

int main(){
	TypeInfo ti = typeid(MyUnion);
	assert(!(ti is null));
	assert(ti.tsize==(MyUnion).sizeof);
	assert(ti.toString()=="dstress.run.typeid_78.MyUnion");
	return 0;
}
