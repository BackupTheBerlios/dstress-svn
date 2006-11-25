// $HeadURL$
// $Date$
// $Author$

// @author@	rm <roel.mathys@gmail.com>
// @date@	2006-10-04
// @uri@	news:eg14oj$4vh$4@digitaldaemon.com
// @desc@	infinite loop in gdc-0.19 with tempaltes

// __DSTRESS_ELINE__ 19

module dstress.nocompile.t.template_48_A;

template TFoo(int v : 1){
	const int TFoo = 1;
}

template TFoo(int v){
	const int TFoo = v * TFoo!(v-1).TFoo;
}

static assert(TFoo!(4) == 24);
