// $HeadURL$
// $Date$
// $Author$

// @author@	Wang Zhen <nehzgnaw@gmail.com>
// @date@	2006-02-17
// @uri@	news:dt4a71$2hva$1@digitaldaemon.com

// __DSTRESS_ELINE__ 18 

module dstress.nocompile.t.template_30_C;

template t(int z){
	const int t = 2;
}

int main(){
	return t!(main());
}

