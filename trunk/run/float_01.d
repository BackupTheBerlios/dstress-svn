// $HeadURL$
// $Date$
// $Author$

module dstress.run.float_01;

int main(){
	float f;
	assert( float.init !<> float.nan);
	assert( f.init !<> float.nan);
	assert( f !<> float.nan);
	assert( (2.3f).init !<> float.nan);
	return 0;
}		
