// $HeadURL$
// $Date$
// $Author$

module dstress.run.__TIME__01;

int main(){
	assert(__TIME__.length==8);
	assert(__TIME__[2]==':');
	assert(__TIME__[5]==':');
	return 0;
}