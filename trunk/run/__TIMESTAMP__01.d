// $HeadURL$
// $Date$
// $Author$

module dstress.run.__TIMESTAMP__01;

int main(){
	assert(__TIMESTAMP__.length==24);
	assert(__TIMESTAMP__[3]==' ');
	assert(__TIMESTAMP__[7]==' ');
	assert(__TIMESTAMP__[10]==' ');
	assert(__TIMESTAMP__[19]==' ');
	return 0;
}