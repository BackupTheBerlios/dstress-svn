/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_47;

int main(){
	TypeInfo ti = typeid(real);
	assert(!(ti is null));
	return 0;
}
