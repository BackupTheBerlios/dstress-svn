// $HeadURL$
// $Date$
// $Author$

module dstress.run.creal_21;

int main(){
	creal a = 22.0L;
	creal b = 22.0L + 0.0Li;
	assert(a==b);
	return 0;
}
