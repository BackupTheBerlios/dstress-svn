// $HeadURL$
// $Date$
// $Author$

module dstress.run.s.scope_16_A;

int main(){
	scope x = 1.5;
	static assert(is(typeof(x) == double));
	
	x++;
	if(x != 2.5){
		assert(0);
	}
	return 0;
}
