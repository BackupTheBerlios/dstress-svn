// $HeadURL$
// $Date$
// $Author$

// @author@	Vladimir <thecybershadow@gmail.com>
// @date@	2007-02-10
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=946
// @desc@	[Issue 946] Circular reference undetected in some cases

// __DSTRESS_DFLAGS__ norun/i/import_20_B.d norun/i/import_20_C.d

module /*dstress.*/norun.i.import_20_A;
import /*dstress.*/norun.i.import_20_B;

int Avar;

static this(){
	Avar = Bvar + 1;
}

