/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_43;

int main(){
	TypeInfo ti = typeid(float);
	assert(!(ti is null));
	return 0;
}
