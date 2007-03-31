// $HeadURL$
// $Date$
// $Author$

// @author@	<s180m@yahoo.co.jp>
// @date@	2007-03-27
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1081
// @desc@	[Issue 1081] with using real and -O option, dmd generate bug code

module dstress.run.o.odd_bug_14_B;

const real PI =	0x1.921fb54442d1846ap+1;

extern(C) double sin(double);
extern(C) double round(double);

int[] s_table;

static this(){
	s_table = new int[2<<16];

	double t = 0.0;

	for(int i=0; i< (2<<16); ++i){
		t += 1.0 / 65536.0;
		s_table[i] = cast(int) round( 65536.0 * sin(PI*t) * sin(PI/2.0*t) / ((PI*PI/2.0)*t*t) );
	}
	s_table[0] = 1<<16;
}

int foo(int a) {
	if((a <= -2<<16) || (a >= 2<<16)){
		return 0;
	}

	if(a<0){
		a = -a;
	}

	return s_table[a];
}

int main(){
	int d;

	for(int i = -0x1abcd; i < 0x20000; i += 0x10000){
		d += foo(i);
	}

	if(0==d){
		assert(0);
	}

	return 0;
}
