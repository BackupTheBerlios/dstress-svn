/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_46;

int main(){
	TypeInfo ti = typeid(double*);
	assert(!(ti is null));
	return 0;
}
