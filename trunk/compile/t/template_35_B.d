// $HeadURL$
// $Date$
// $Author$

// @author@	Li Jie <cpunion@gmail.com>
// @date@	2006-04-11
// @uri@	news:e1fa64$17nq$1@digitaldaemon.com

module dstress.compile.t.template_35_B;

template foo(char[] str){
	const char foo = bar!(str[1]);
}

template bar(char c){
	const char bar = c;
}

static assert(foo!("abc") == 'b');

