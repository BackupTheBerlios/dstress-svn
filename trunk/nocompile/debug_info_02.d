// $HeadURL$
// $Date$
// $Author$

// @author@	Regan Heath <regan@netwin.co.nz>
// @date@	2005-03-25
// @uri@	news:opsn61vgpg23k2f5@nrage.netwin.co.nz

// __DSTRESS_ELINE__ 13

module dstress.nocompile.debug_info_02;

typedef fn function() fn;

byte status;

fn foo() {
	status++;
	return &foo;
}

int main(){
	assert(status==0);
	fn p = foo();
	assert(status==1);
	p();
	assert(status==2);
	return 0;
} 
