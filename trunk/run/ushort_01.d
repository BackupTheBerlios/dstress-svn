// $HeadURL$
// $Date$
// $Author$

module dstress.run.ushort_01;

int main(){
	ushort a;
	assert( a.init == 0 );
	assert( ushort.init == 0 );
	assert( a == 0 );
	return 0; 
}

