// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ addon/private_import_A.d addon/private_import_B.d

module dstress.nocompile.private_import_01;

import addon.private_import_B;

class Foo2 : Bar {

}

int main(){
	return 0;
}
