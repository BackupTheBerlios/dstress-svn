// $HeadURL$
// $Date$
// $Author$

module dstress.run.ushort_04;

int main(){
	ushort u;
	assert( u.max == 0xFFFF );
	assert( ushort.max == 0xFFFF);
	return 0;
}
