// $HeadURL$
// $Date$
// $Author$

// @author@	Vladimir <thecybershadow@gmail.com>
// @date@	2007-02-10
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=946
// @desc@	[Issue 946] Circular reference undetected in some cases

// __DSTRESS_DFLAGS__ norun/i/import_20_A.d norun/i/import_20_C.d

module /*dstress.*/norun.i.import_20_B;
import /*dstress.*/norun.i.import_20_C;

int Bvar;

static this(){
	Bvar = Avar + 1;
}

