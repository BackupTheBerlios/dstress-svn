// __DSTRESS_DFLAGS__ -I.. addon/private_import_A.d addon/private_import_B.d

module dstress.nocompile.private_import_02;

import dstress.addon.private_import_B;

int main(){
	int fooC = fooA;
	return 0;
}
