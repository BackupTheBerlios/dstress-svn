
int main(){
	ubyte u;
	assert( u.sizeof == 1 );
	assert( ubyte.sizeof == 1 );
	assert( typeid( ubyte ).tsize() == 1 );
	return 0;
}
