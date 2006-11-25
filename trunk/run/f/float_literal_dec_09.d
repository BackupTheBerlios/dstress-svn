// $HeadURL$
// $Date$
// $Author$

module dstress.run.f.float_literal_dec_09;

int main(){
	double f = .0 ;
	double ff = 0.0;
	assert(f==ff);
	return 0;
}
