// $HeadURL$
// $Date$
// $Author$

module dstess.run.ushort_06;

int main(){
	ushort u;
	assert( u.alignof >= u.sizeof );
	assert( ushort.alignof >= u.sizeof );
	return 0;
}
