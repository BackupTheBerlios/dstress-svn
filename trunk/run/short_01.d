// $HeadURL$
// $Date$
// $Author$

module dstress.run.short_01;

int main(){
	short a;
	assert(a.init == 0);
	assert(short.init == 0);
	assert(a == 0);

	return 0; 
}
