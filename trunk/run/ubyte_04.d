// $HeadURL$
// $Date$
// $Author$

module dstress.run.ubyte_04;

int main(){
	ubyte u;

	assert( u.alignof >= u.sizeof );
	
	return 0;
}
