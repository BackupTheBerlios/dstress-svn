// $HeadURL$
// $Date$
// $Author$

module dstress.run.float_05;

int main(){
	float f;
	assert( float.dig > 5 );
	assert( float.dig < double.dig );
	assert( float.dig == f.dig );
	assert( float.dig == (2.4f).dig );
	return 0;
}
