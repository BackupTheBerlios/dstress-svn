// $HeadURL$
// $Date$
// $Author$

module dstress.nocompile.s.string_postfix_01_A;

int main(){
	char[1] master;
	assert(typeid(typeof("a"c))==typeid(typeof(master)));
	return 0;
}
