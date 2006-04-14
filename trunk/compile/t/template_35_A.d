// $HeadURL$
// $Date$
// $Author$

// @author@	Li Jie <cpunion@gmail.com>
// @date@	2006-04-11
// @uri@	news:e1fa64$17nq$1@digitaldaemon.com

module dstress.compile.t.template_35_A;

template foo(char[] str){
	const char[] foo = bar!(str);
}

template bar(char[] str){
	const char[] bar = str;
}

static assert(foo!("abc") == "abc"):

