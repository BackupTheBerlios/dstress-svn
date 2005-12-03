// $HeadURL$
// $Date$
// $Author$

// @author@	Eugene Pelekhay <pelekhay@gmail.com>
// @uri@	news:dj5nic$24r7$1@digitaldaemon.com
// @date@	2005-10-19

// __DSTRESS_DFLAGS__ "-Iaddon/import 09" "addon/import 09/import_dummy_09.d"

module dstress.run.i.import_09;

import import_dummy_09;

int main(){
	assert(2==test(2));
	return 0;
}
