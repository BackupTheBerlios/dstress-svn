/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_81;

enum {
	A,
	B
}

int main(){
	TypeInfo ti = typeid(typeof(A));
	assert(!(ti is null));
	return 0;
}
