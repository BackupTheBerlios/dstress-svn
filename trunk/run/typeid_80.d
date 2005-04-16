/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_80;

union MyUnion{
	int i;
	byte b;
}

int main(){
	TypeInfo ti = typeid(MyUnion*);
	assert(!(ti is null));
	assert(ti.tsize==(MyUnion*).sizeof);
	assert(ti.toString()=="dstress.run.typeid_80.MyUnion*");
	return 0;
}
