// $HeadURL$
// $Date$
// $Author$

module dstress.run.real_05;

int main(){
	real r;
	assert( real.dig > 9 );
	assert( real.dig >= float.dig );
	assert( real.dig == r.dig );
	return 0;
}
