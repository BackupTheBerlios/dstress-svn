// $HeadURL$
// $Date$
// $Author$

// @author@	Wang Zhen <nehzgnaw@gmail.com>
// @date@	2006-02-17
// @uri@	news:dt4a71$2hva$1@digitaldaemon.com
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=722

// __DSTRESS_ELINE__ 18

module dstress.nocompile.t.template_30_B;

template t(int z){
}

int main(){
	return t!(main());
}

