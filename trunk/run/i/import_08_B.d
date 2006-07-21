// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-09-17
// @uri@	news:dggsko$pi$1@digitaldaemon.com

// __DSTRESS_DFLAGS__ addon/import_08_Z.d

module dstress.run.i.import_08_B;

import addon.import_08_Z;

class C{
	import addon.import_08_Z;
}

int main(){
	int x;

	with(new C){
		x = test(1);
	}

	assert(x==2);

	return 0;
}
