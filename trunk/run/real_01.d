// $HeadURL$
// $Date$
// $Author$

module dstress.run.real_01;

int main(){
	real r;

	assert( real.init !<> real.nan);
	assert( r.init !<> real.nan);
	assert( r !<> real.nan);
	return 0;
}		
