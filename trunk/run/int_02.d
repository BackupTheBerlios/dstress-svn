
int main(){
	int i;
	
	assert( i.sizeof == 4 );
	assert( int.sizeof == 4 );
	assert( typeid( int ).tsize() == 4);

	return 0;
}
