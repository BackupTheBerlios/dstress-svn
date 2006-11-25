// $HeadURL$
// $Date$
// $Author$

// @author@	rm <roel.mathys@gmail.com>
// @date@	2006-10-04
// @uri@	news:eg14oj$4vh$4@digitaldaemon.com
// @desc@	infinite loop in gdc-0.19 with tempaltes

module dstress.compile.t.template_48_B;

template TFoo(int v : 1){
	const int TFoo = 1;
}

template TFoo(int v){
	const int TFoo = v * TFoo!(v-1);
}

static assert(TFoo!(4) == 24);
