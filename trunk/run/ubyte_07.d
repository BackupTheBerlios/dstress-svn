// $HeadURL$
// $Date$
// $Author$

module dstress.run.ubyte_07;

int main(){
	ubyte u;

	assert( u.max == 255 );
	assert( ubyte.max == 255 );

	return 0;
}
