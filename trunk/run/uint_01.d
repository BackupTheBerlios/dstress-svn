// $HeadURL$
// $Date$
// $Author$

module dstress.run.uint_01;

int main(){
	uint a;
	
	assert( a.init == 0 );
	assert( uint.init == 0 );
	assert( a == 0 );

	return 0; 
}
