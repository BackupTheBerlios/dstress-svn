// $HeadURL$
// $Date$
// $Author$

module dstress.run.ushort_05;

int main(){
	ushort u;
	assert( u.sizeof == 2 );	
	assert( ushort.sizeof == 2 );
	assert( typeid( ushort ).tsize() == 2);
	return 0;
}
