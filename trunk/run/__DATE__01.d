// $HeadURL$
// $Date$
// $Author$

module dstress.run.__DATE__01;

int main(){
	assert(__DATE__.length==11);
	assert(__DATE__[3]==' ');
	assert(__DATE__[6]==' ');
	return 0;
}