// $HeadURL$
// $Date$
// $Author$

module dstress.run.int_03;

int main(){
	int i;
	
	assert( i.alignof >= i.sizeof );
	assert( int.alignof >= i.sizeof );
	
	return 0;
}
