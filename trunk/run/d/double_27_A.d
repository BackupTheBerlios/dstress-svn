// $HeadURL$
// $Date$
// $Author$

// based on: gcc.c-torture/execute/ieee/20010226-1.c

module dstress.run.d.double_27_A;

double dfrom = 1.1;
double m1;
double m2;

ulong mant_long;

int main(){
	m1 = dfrom / 2.0;
	m2 = m1 * 4294967296.0;
	mant_long = (cast(ulong) m2) & 0xFFFF_FFFF;

	if(mant_long != 0x8CCC_CCCC){
		assert(0);
	}

	return 0;
}


