// $HeadURL$
// $Date$
// $Author$

// @author@	Wang Zhen <nehzgnaw@gmail.com>
// @date@	2006-02-17
// @uri@	news:dt4a71$2hva$1@digitaldaemon.com

module dstress.nocompile.t.template_30_D;

template t(int z){
	const int t = 2;
}

int foo(){
	return t!(bar());
}

int bar(){
	return t!(foo());
}


