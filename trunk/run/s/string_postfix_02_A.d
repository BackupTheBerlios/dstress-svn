// $HeadURL$
// $Date$
// $Author$

module dstress.nocompile.s.string_postfix_02_A;

int main(){
	dchar[1] master;
	assert(typeid(typeof("a"d))==typeid(typeof(master)));
	return 0;
}
