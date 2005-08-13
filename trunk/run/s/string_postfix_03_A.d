// $HeadURL$
// $Date$
// $Author$

module dstress.nocompile.s.string_postfix_03_A;

int main(){
	wchar[1] master;
	assert(typeid(typeof("a"w))==typeid(typeof(master)));
	return 0;
}
