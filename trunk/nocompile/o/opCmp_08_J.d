// $HeadURL$
// $Date$
// $Author$

// @author@	Lionello Lunesu <lio@lunesu.com>
// @date@	2006-07-20
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=259
// @desc@	[Issue 259] New: Comparing signed to unsigned does not generate an error

// __DSTRESS_ELINE__ 18

module dstress.nocompile.o.opCmp_08_J;

void foo(){
	byte a = 1;
	ubyte b = 1;

	if(a > b){
		a++;
	}
}

