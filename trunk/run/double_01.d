// $HeadURL$
// $Date$
// $Author$

module dstress.run.double_01;

int main(){
	double d;

	assert( double.init !<> double.nan);
	assert( d.init !<> double.nan);
	assert( d !<> double.nan);
	assert( (2.3).init !<> double.nan);
	return 0;
}		
